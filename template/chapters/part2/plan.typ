#import "../../lib.typ": *

#let plan() = [
  = Planen

  Es wurden drei User Stories mit klar definierten Anweisungs- und Akzeptanzkriterien bereitgestellt:

  - #text(weight: "bold")[DCCON-6293 - eAssets: Zenix CH: FE: Mobile upgrade: Transaction lists]
  - #text(weight: "bold")[DCCON-6205 - eAssets: Zenix CH: FE: Mobile upgrade: Transaction Detail page]
  - #text(weight: "bold")[DCCON-6511 - eAssets: Zenix CH: FE: Mobile upgrade: PF/ZR page: Transactions Filter upgrade]

  Die geplante Vorgehensweise beginnt mit der Implementierung der Transaktionsliste, da diese eine hohe Priorität für das nächste Release hat und eine relativ einfache Aufgabe darstellt. Nach erfolgreicher Implementierung erfolgt eine Rücksprache mit dem #gls("po"), um das Feedack zu sammlen und sicherzustellen, dass die Anforderungen erfüllt sind. Diese Vorgehensweise wird auch für die zwei weiteren User Stories angewendet.

  == Transaktions-Auflistung(DCCON-6293)

  Das Ziel ist die Entwicklung einer kombinierten Liste für Portfolio- und Kunden-Transaktionen, die die NRT-Daten klar hervorhebt. Die bestehenden Listen für Bankkonten- und Instrument-Transaktionen sollen unverändert bleiben.


  #text(weight: "bold")[Geplante Massnahmen]
  - Analyse der aktuellen Desktop-Lösung mit Fokus auf Datenstruktur, Benutzerführung und Darstellung der Transaktionsdaten.
  - Entwicklung einer neuen, kombinierten Liste für Portfolio- und Kunden-Transaktionen basierend auf den bestehenden Implementierungen.
  - Implementierung eines NRT-Highlightings unter Einsatz farbiger Hintergründe und Trennlinien zur besseren Datenvisualisierung.
  - Sicherstellung der technischen und visuellen Kompatibilität der bestehenden Listen für Bankkonten- und Instrument-Transaktionen durch Anpassungen und Tests.

  #text(weight: "bold")[Sicherstellung der Qualität]
  - Verwendung von Konfigurationsflags, um regionsspezifische Unterschiede zu berücksichtigen.
  - Durchführung von #glspl("e2e") zur Validierung des NRT-Highlightings.

  == Transaktions-Detail-Ansicht(DCCON-6205)

  Das Ziel ist die Anpassung der bestehenden mobilen Detailansicht und Integration zusätzlicher Backend-Daten.

  #text(weight: "bold")[Geplante Massnahmen]
  - Analyse der bestehenden mobilen Detailansicht und Vergleich mit der Desktop-Version.
  - Identifikation und Anforderung zusätzlicher Backend-Daten, die für die mobile Ansicht notwendig sind.
  - Integration eines weiteren Backend-Calls zur Datenladung unter Beachtung der Performance-Anforderungen.

  #text(weight: "bold")[Risikomanagement]
  - #text(fill: red)[Risiko]: Daten könnten fehlerhaft oder unvollständig angezeigt werden.
  - #text(fill: green)[Lösung]: Vergleich der Anzeige auf mobilen Geräten und Desktop, um Inkonsistenzen zu identifizieren und zu beheben.

  == Transaktions-Filter(DCCON-6511)

  Das Ziel ist die Entwicklung einer flexiblen und nachhaltigen Filterlösung für mobile Geräte, basierend auf einer Frontend-basierten Architektur.

  #text(weight: "bold")[Geplante Massnahmen]
  - Übernahme und Analyse der bestehenden Filterlogik aus der Desktop-Implementierung.
  - Entwicklung einer neuen Frontend-basierten Filterarchitektur, die für mobile Geräte optimiert ist.
  - Sicherstellung der nahtlosen Integration der Filter mit der neuen Transaktionsliste.

  #text(weight: "bold")[Risiken]
  - #text(fill: red)[Risiko]: Daten könnten inkorrekt gefiltert werden.
  - #text(fill: red)[Risiko]: Der Zeitrahmen für die Entwicklung könnte aufgrund unerwarteter Komplexitäten überschritten werden.
  - #text(fill: green)[Lösung]: Vergleich der Anzeige auf mobilen Geräten und Desktop, um Inkonsistenzen zu identifizieren und zu beheben.

  == Test Konzept
  Das Ziel ist die Sicherstellung der Funktionalität und Qualität durch automatisierte sowie manuelle Tests.

  #text(weight: "bold")[Geplante Massnahmen]
  - Erstellung von #glspl("e2e") mit Cypress für die Transaktionsliste, die Detailansicht und die Filterfunktionalität.
  - Durchführung manueller Tests zur Überprüfung der visuellen Konsistenz und Benutzerfreundlichkeit.

  #pagebreak()

  #table(
    columns: (1fr, 2fr, 2fr, 6fr),
    stroke: none,
    fill: (x, y) => if y == 0 { gray } else { none },
    align: (x, y) => if y == 0 { center } else { left },
    table.header(
      text(size: 14pt, weight: "bold")[*ID*],
      text(size: 14pt, weight: "bold")[*Testtyp*],
      text(size: 14pt, weight: "bold")[*Testart*],
      text(size: 14pt, weight: "bold")[*Beschreibung*],
    ),

    [T001],
    [*Manuelle Tests*],
    [Visuelle Konsistenz],
    [Überprüfung der UI auf korrekte Darstellung und Benutzerfreundlichkeit. Tests für responsives Design und regionsspezifische Anpassungen.],

    [T002],
    [*Manuelle Tests*],
    [Explorative Tests],
    [Freies Testen der Anwendung durch Tester, um potenzielle Fehler und Randfälle zu identifizieren.],

    [T003],
    [*Automatisierte Tests*],
    [E2E mit Cypress],
    [Tab-Transaktionen: Validierung der korrekten Sichtbarkeit von Konto- und Sicherheitstransaktionen sowie der Farbkodierung der Bilanzen.],

    [T004],
    [*Automatisierte Tests*],
    [E2E mit Cypress],
    [Deaktivierte Tabs: Sicherstellen, dass der Transaktionstab nicht angezeigt wird, wenn deaktiviert.],

    [T005],
    [*Automatisierte Tests*],
    [E2E mit Cypress],
    [NRT-Transaktionen: Validierung der Suchfunktion und Anzeige der NRT-Transaktionen nach Filtern und Suchbegriffen.],

    [T006],
    [*Automatisierte Tests*],
    [E2E mit Cypress],
    [Filteranwendung: Sicherstellen, dass spezifische Transaktionen nach Filtern korrekt angezeigt werden.],

    [T007],
    [*Automatisierte Tests*],
    [E2E mit Cypress],
    [Keine Transaktionen: Überprüfung, dass keine Ergebnisse angezeigt werden, wenn Filter keine passenden Transaktionen ergeben.],

    [T008],
    [*Automatisierte Tests*],
    [E2E mit Cypress],
    [Filteroptionen: Validierung der Verfügbarkeit und Funktionalität aller Filteroptionen in der Benutzeroberfläche.],

    [T009],
    [*Automatisierte Tests*],
    [E2E mit Cypress],
    [Datenvalidierung: Sicherstellen, dass alle Transaktionsdaten korrekt geladen und dargestellt werden.],

    [T010],
    [*Automatisierte Tests*],
    [E2E mit Cypress],
    [Fehlerfallprüfung: Überprüfung des Verhaltens bei fehlenden oder fehlerhaften Daten.],

    [T012],
    [*Automatisierte Tests*],
    [E2E mit Cypress],
    [Detailansichten: Überprüfung der Vollständigkeit der Daten von den Detailansichten auf ZR-, Portfolio-, Cash- sowie Custody-Ebenen.],
  )

]