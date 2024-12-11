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

  == Transaktions-Filter(DCCON-6511)
]