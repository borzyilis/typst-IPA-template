#import "../../lib.typ": *


#let realise() = [
  = Realisieren

  Hier wird die Vorgehensweise dokumentiert, die für eine erfolgreiche Implementierung der Features erforderlich ist. Die folgenden Beschreibungen geben einen Einblick in die durchgeführten Änderungen und die Gründe dafür.


  == Transaktions-Auflistung(DCCON-6293)

  Die Entwicklung der Funktion begann mit der Bearbeitung der `TransactionTab`-Komponente, indem neue Eigenschaften (`props`) zu den Transaktionskomponenten hinzugefügt wurden. Diese Eigenschaften basieren auf der `EnvConfig`-Konfiguration, um die Transaktions-Tabs sowohl auf Portfolio als auch auf Business Relationship Ebene zu aktivieren oder zu deaktivieren.


  ```TypeScript
  <Transactions
      enableAllTransactionsTab={EnvConfig.config.portfolio.
      enableAllTransactionsTab}
      enableCashTransactionsTab={EnvConfig.config.portfolio.
      enableCashTransactionsTab}
      enableSecurityTransactionsTab={EnvConfig.config.portfolio.
      enableSecurityTransactionsTab}
      targetId={businessRelationship.brId}
      targetType={TransactionTargetTypeValues.BusinessRelationship}
  />

  <Transactions
      enableAllTransactionsTab={EnvConfig.config.portfolio.
      enableAllTransactionsTab}
      enableCashTransactionsTab={EnvConfig.config.portfolio.
      enableCashTransactionsTab}
      enableSecurityTransactionsTab={EnvConfig.config.portfolio.
      enableSecurityTransactionsTab}
      targetId={portfolio.portfolioId}
      targetType={TransactionTargetTypeValues.Portfolio}
  />
  ```


  In den Transaktionskomponenten selbst werden abhängig vom Zustand der eingehenden Eigenschaften (`props`) die aktivierten Tabs gerendert:

  ```TypeScript
  {enableCashTransactionsTab && (
      <StyledTabPanel value="cashTransactions">
          <CashTransactionsTab targetId={targetId} targetType={targetType} />
      </StyledTabPanel>
  )}
  {enableSecurityTransactionsTab && (
      <StyledTabPanel value="securityTransactions">
          <CustodyTransactionsTab targetId={targetId} targetType={targetType} />
      </StyledTabPanel>
  )}
  {enableAllTransactionsTab && (
      <StyledTabPanel value="allTransactions">
          <CustodyTransactionsTab targetId={targetId} targetType={targetType} />
      </StyledTabPanel>
  )}
  ```
  Falls nur ein Tab aktiviert ist, wird der gesamte Tab-Bereich versteckt:

  ```typescript
  const hasMultipleTabs = Object.keys(tabs).length > 1;
  if (!hasMultipleTabs) {
      // Logik, um Tabs zu verstecken
  }
  ```

  Der Stil wurde anschließend gemäß den Anforderungen in der User-Story angepasst. Zum Beispiel wird die IBAN angezeigt, falls sie vorhanden ist:

  ```typescript
  {transaction.iban && formatIban(transaction.iban)}
  ```

  Zusätzlich wird der Buchungstext, falls vorhanden, angezeigt. Wenn dieser fehlt, wird stattdessen das Instrument oder `operationNature` dargestellt:

  ```typescript
  <Typography
    variant="body2"
    noWrap
    component="div"
    sx={{
      letterSpacing: '0.08em',
      textTransform: 'uppercase',
      flex: 1,
      ...blendOutEffectText,
    }}
  >
    {transaction.bookingText ?? transaction.instrument ?? transaction.operationNature ?? ''}
  </Typography>
  ```

  Der Transaktionsbetrag mit einem Formatter `formatAmountPerformance` gerendert. Die Farbe zeigt dabei an, ob es sich um eine eingehende (grün) oder ausgehende (rot) Transaktion handelt:

  ```typescript
  <Typography variant="body2" component="div">
    {formatBold(
      formatAmountPerformance({
        value: amount?.value ?? 0,
        currency: amount?.currency ?? '',
      }),
      {
        exclude: amount?.currency ?? '',
        boldTypographyProps: {
          color:
            (amount?.value ?? 0) < 0
              ? jbPalette.supporting.alertRed800
              : (amount?.value ?? 0) > 0
              ? jbPalette.secondary.forestGreen1000
              : 'inherit',
        },
      }
    )}
  </Typography>
  ```

  Für die Übersetzungen wurde die entsprechende Anpassung vorgenommen, um den Text für "Alle Transaktionen" ("All transactions") aufzunehmen. Der Wert wird mittels der `t()`-Funktion interpoliert, die den Schlüssel nutzt. Zum Beispiel:
  `t('transactionView.actions.allTransactions')`

  Das CSS-Styling der hervorgehobenen Transaktion wurde durch das Überschreiben der Standard-CSS-Klassen der MUI-Komponenten angepasst. Die Klasse `&.Mui-selected` wurde mit der gewünschten Hintergrundfarbe überschrieben. Es war wichtig zu beachten, dass bei nebeneinanderliegenden hervorgehobenen Transaktionen der `Divider` visuell verschwindet. Daher wurde auch die Farbe des `Dividers` entsprechend angepasst:

  ```typescript
  <ListItemButton
    selected={transaction.fullyAccounted === false}
    sx={{
      px: 3,
      pt: 1.5,
      pb: 2.375,
      display: 'block',
      '&.Mui-selected': {
        backgroundColor: jbPalette.supporting.stone200,
      },
      '&.Mui-selected + &.Mui-selected .MuiDivider-root': {
        backgroundColor: jbPalette.supporting.dividerColor,
      },
    }}
  >
    {/* Transaktionsinhalte */}
  </ListItemButton>
  ```

  == Transaktions-Detail-Ansicht(DCCON-6205)

  #text(weight: "bold")[Änderungen im AppRouter]

  Um die neue Detailansicht für Cash- und Custody-Transaktionen zu implementieren, musste zunächst das Routing im `AppRouter` angepasst werden, da sich der API-Endpunkt geändert hatte. Anstelle der Endpunkte `securitytransactions/:transactionId` und `cashtransactions/:transactionId` wurde nun ein einheitlicher Endpunkt `transactions/:transactionId` eingeführt.

  Durch diese Änderung wird der Benutzer beim Druck auf eine Transaktion basierend auf der Transaktions-ID zur entsprechenden Detailansicht weitergeleitet.


  Für das Klick/ Druck-Handling wurde eine modifizierung der Funktion eingeführt, um die Navigation korrekt durchzuführen:

  ```typescript
  const handleClick = () => {
    dispatch(setCurrentCustodyTransaction(transaction));
    dispatch(clearCurrentCashTransaction());

    const id =
      EnvConfig.config.transactionsTab.enableTransactionDetailsRequest && transaction.id
        ? encodeURIComponent(transaction.id)
        : 'details';

    navigate(
      `/zr/${zrId}${portfolioId ? `/portfolios/${portfolioId}` : ''}${
        positionId ? `/positions/${positionId}` : ''
      }/transactions/${id}`
    );
  };
  ```

  Da die Funktionalität der aktualisierten Detailansicht bereits in der Desktop-Version implementiert war, konnte die Mobile-Version auf der Desktop-Version basieren. Dabei wurden Änderungen am Code vorgenommen, um diese an die mobile Version anzupassen.

  Anstelle separater Ansichten wie `<CustodyTransactionDetails />` wurde die Ansicht `<TransactionDetails />` verwendet. Diese ersetzt die vorherigen separierten Ansichten. Das bedeutet, dass beim Anklicken einer Transaktion dieselbe Komponente aufgerufen wird.

  In der Komponente `TransactionDetails` wird der benutzerdefinierte Hook `useGetDetailTransactionQuery` verwendet, um die Transaktionsdaten abzurufen:

  ```typescript
  const { isFetching, data } = useGetDetailTransactionQuery(
    {
      currency,
      transactionCode: transactionId,
      portfolioId:
        portfolioId ?? cashTransaction?.portfolioId ?? custodyPositionTransaction?.portfolioId,
    },
    {
      skip: !EnvConfig.config.transactionsTab.enableTransactionDetailsRequest,
    }
  );
  ```

  Da dieser Hook aufgrund unterschiedlicher Konfigurationen oder Standorte fehlschlagen kann, werden die Daten mit dem Hook `useTransactionDetailInfo` zusammengefügt. Die benötigten Transaktionen werden mithilfe von React Redux geladen:

  ```typescript
  const cashTransaction = useAppSelector(selectCurrentCashTransaction);
  const custodyPositionTransaction = useAppSelector(selectCurrentCustodyTransaction);

  const detailPageData = useTransactionDetailInfo(
    cashTransaction,
    custodyPositionTransaction,
    data
  );
  ```

  #text(weight: "bold")[Validierung der Daten]

  Ein Check überprüft, ob gültige Daten vorliegen. Falls dies nicht der Fall ist, wird der Benutzer zur Hauptseite weitergeleitet. Andernfalls wird die Komponente `TransactionDetailOverview` mit den Detaildaten als Prop gerendert:

  ```typescript
  return <TransactionDetailOverview detailPageData={detailPageData}/>;
  ```

  #text(weight: "bold")[Rendern der Transaktionsabschnitte (Transaction Sections)]

  In der `TransactionDetailOverview`-Komponente werden verschiedene Abschnitte der Transaktion basierend auf den empfangenen Daten geladen:

  ```typescript
  <TransactionItemsSection detailPageData={detailPageData} expandAll={expandAll} />
  ```

  Die Komponente `TransactionItemsSection` rendert die Daten in Abschnitten. Jeder Abschnitt wird in einer Box mit einem Titel angezeigt, und die Elemente des Abschnitts werden durchlaufen und einzeln hinzugefügt:

  ```typescript
  <Object.entries(sections).map(([sectionKey, values]) => (
    <SectionBox key={sectionKey} title={t(`transactionDetails.labels.${sectionKey}`)} expand={expandAll}>
      {values.map((sectionItem) => (
        items[sectionItem]?.value && (
          <TransactionItem key={sectionItem} itemKey={sectionItem} item={items[sectionItem]} />
        )
      ))}
    </SectionBox>
  ))}
  ```

  Da einige der Komponenten Desktop-basiert waren, mussten sie entsprechend den Standards der Codebasis angepasst werden. Der Hook `useTransactionDetailInfo` sowie die Komponente `SectionBox` wurden in den gemeinsamen Code verschoben, um eine Wiederverwendbarkeit zu gewährleisten.

  Zusätzlich wurde das Laden des Seiten-Headers überarbeitet, um ihn für verschiedene Header-Typen nutzbar zu machen. Die Komponente `LoadingPageHeader` kann nun für verschiedene Szenarien konfiguriert werden, indem Höhe und Breite anpassbar sind. Dies verbessert die Wiederverwendbarkeit und passt den Header an die benötigten Felder an:

  ```typescript
  <LoadingPageHeader
    title={{ enable: true }}
    iban={{ enable: true }}
    context={{ enable: true, height: 22 }}
    performanceItem={{ enable: true }}
  />
  ```

  Diese Anpassungen waren notwendig, da der Seiten-Header in der Detailansicht andere Felder enthält als die bereits existierenden Header.


  == Transaktions-Filter(DCCON-6511)

  Die Implementierung des erweiterten Filters begann mit der Analyse der Verwendung der #gls("UF", long:false)-Bibliothek in der vorherigen Filterimplementierung, die nur für Transaktionen in einem bestimmten Datumsbereich funktionierte:

  ```typescript
  const form = useForm<SecurityTransactionsSearchFormValues>({
    defaultValues: {
      dateRange: [
        dayjs(minimalSearchParams.startDate, apiDateFormat),
        dayjs(minimalSearchParams.endDate, apiDateFormat),
      ],
    },
  });
  ```

  Die Konfiguration erfolgt abhängig von der Ansicht:

  ```typescript
  const configTimeRange = position
    ? {
        range: EnvConfig.config.custodyPosition.transactionTimeRanges?.default ?? 10,
        unit: EnvConfig.config.custodyPosition.transactionTimeRanges?.defaultUnit ?? 'years',
      }
    : targetType === TransactionTargetTypeValues.Portfolio
    ? {
        range: EnvConfig.config.custodyPosition.transactionTimeRanges?.portfolio ?? 90,
        unit: EnvConfig.config.custodyPosition.transactionTimeRanges?.portfolioUnit ?? 'days',
      }
    : {
        range: EnvConfig.config.custodyPosition.transactionTimeRanges?.businessRelationship ?? 30,
        unit: EnvConfig.config.custodyPosition.transactionTimeRanges?.businessRelationshipUnit ?? 'days',
      };
  ```

  Die Standardwerte `minimalSearchParams.startDate` und `endDate` basieren auf der Ansicht des Nutzers:
  - #text(weight: "bold")[Portfolio-Ansicht]: 90 Tage
  - #text(weight: "bold")[Geschäftspartner-Ansicht (ZR)]: 90 Tage
  - #text(weight: "bold")[Detailansicht]: 10 Jahre

  #text(weight: "bold")[Datenabruf und Filterlogik]

  Die vom Benutzer eingegebenen Werte werden in einer Anfrage an eine API übermittelt, die über den benutzerdefinierten Hook `useGetCustodyTransactionsWithSearchQuery` umgesetzt ist. Diese API liefert die Transaktionen im angegebenen Datumsbereich zurück.

  ```typescript
  const { data, isFetching } = useGetCustodyTransactionsWithSearchQuery({
    ...searchParams,
    valuationDate,
    currency,
    body: {
      criteria: {
        ...searchParams.body?.criteria,
        ...(targetType === TransactionTargetTypeValues.BusinessRelationship
          ? { businessRelationshipId: targetId }
          : { portfolioId: targetId }),
      },
    },
  });
  ```

  Die gefilterten Daten werden an die Komponente `CustodyTransactionsList` weitergeleitet, um gerendert zu werden.

  #text(weight: "bold")[Erweriterung des Filters]

  Die Komponente `CustodyFilterTransactionsDialog` wird geöffnet, wenn das Suchsymbol angeklickt wird. Sie erhält unter anderem die Props `data` und `setFilterParams`. Mit dem `data`-Prop werden Optionen für die Filter abgeleitet:

  ```typescript
  const operationNatures = Array.from(
    new Set(
      data?.transactionGroups.flatMap((group) =>
        group.transactions.flatMap((transaction) => transaction.operationNature || [])
      )
    )
  ).filter(Boolean);
  ```

  #text(weight: "bold")[State-Management]

  Die `setFilterParams`-Funktion wird verwendet, um die Filterparameter zu aktualisieren:

  ```typescript
  const [filterParams, setFilterParams] = useState<
    SecurityTransactionsSearchFormValues | undefined
  >(undefined);
  ```

  #text(weight: "bold")[Dynamisches Rendering mit `useForm`]

  Die #gls("UF")-Bibliothek ermöglicht es, Feldänderungen automatisch zu verarbeiten:

  ```typescript
  <Controller
    name="bookingText"
    control={form.control}
    render={({ field }) => (
      <StyledTextField placeholder={t('common.actions.search')} {...field} />
    )}
  />
  ```

  Felder mit komplexerer Logik wie `AmountRangeInput` erfordern jedoch eine eigene Implementierung:

  ```typescript
  <AmountRangeInput
    valueFrom={field.value?.amountFrom}
    valueTo={field.value?.amountTo}
    onChangeFrom={(value) => handleFromChange(field, value)}
    onChangeTo={(value) => handleToChange(field, value)}
    currency={''}
  />

  const handleFromChange = (field, amount) => {
    field.onChange({
      ...field.value,
      amountFrom: amount,
    });
  };

  const handleToChange = (field, amount) => {
    field.onChange({
      ...field.value,
      amountTo: amount,
    });
  };
  ```

  `...field.value`, verhindert, dass vorherige Werte überschrieben werden, indem es ein Merge von den Daten passiert.

  #text(weight: "bold")[Filtern der Daten]

  Die Filterparameter stehen nach dem Suchen-Button im `CustodyTransactionTab` zur Verfügung. Die gefilterten Daten werden mit `useMemo` berechnet:

  ```typescript
  const filteredTransactions = useMemo(
    () => filterTransactions<PositionTransactionsPage, typeof filterParams>(data, filterParams),
    [data, filterParams]
  );
  ```

  Der generische Filter berücksichtigt die verschiedenen Transaktionstypen:

  ```typescript
  const transactionNature =
    'operationNature' in transaction
      ? transaction.operationNature
      : 'nature' in transaction
      ? (transaction as CashTransaction).nature
      : undefined;

  return transactionNature?.includes(filterParams.nature);
  ```

  Schlissend werden die gefitlerte Daten an `CustodyTransactionsList` Komponente, um die Komponente mit den gefilterten Daten zu rendern.

  ```typescript
  <CustodyTransactionsList
    transactionPage={filteredTransactions}
    isFetching={isFetching}
    showPortfolio={
      position
        ? positionInMultiplePortfolios
        : targetType === TransactionTargetTypeValues.BusinessRelationship
    }
  />
  ```
]