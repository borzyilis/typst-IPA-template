#import "../../lib.typ": *

#let control() = [
  #pagebreak()
  = Kontrollieren - Testen und Validieren

  Während der Kontrollphase des Projekts wurde das Testkonzept, welches während der Planungsphase erstellt wurde, verwendet, um die implementierte Funktionalität zu testen. Dies beinhaltete sowohl manuelle Tests, die vom Kandidaten durchgeführt wurden, als auch automatisierte Tests, die mit Hilfe des End-to-End-Testtools Cypress ausgeführt wurden.

  Die automatisierten Tests mit Cypress ermöglichten es, komplexe Testszenarien effizient und wiederholbar auszuführen. Dabei wurde sichergestellt, dass die Kernfunktionalitäten unter verschiedenen Bedingungen korrekt arbeiten.

  Die manuellen Tests hingegen ergänzten die automatisierten Tests, indem sie spezifische Szenarien abdeckten, die nicht durch die Automatisierung erfasst wurden. Diese Tests konzentrierten auf die Übereinstimmungen der Daten in der Applikation durch den Vergleich von angezeigten Daten zwischen der Desktop- und der Mobilversion Versionen.

  Am Ende der Kontrollphase wurden alle Testergebnisse dokumentiert. Dies beinhaltete sowohl die Ergebnisse der erfolgreichen Tests als auch die identifizierten Probleme und deren Behebung. Die Dokumentation diente als Nachweis für die Qualität der implementierten Funktionalitäten und stellte sicher, dass alle Anforderungen des Projekts erfüllt wurden.


  #table(
    columns: (1fr, 2fr, 4fr),
    stroke: none,
    fill: (x, y) => if y == 0 { gray } else { none },
    align: (x, y) => if y == 0 { center } else { left },
    table.header(
      text(size: 14pt, weight: "bold")[*ID*],
      text(size: 14pt, weight: "bold")[*Testergebnis*],
      text(size: 14pt, weight: "bold")[*Kommentar*],
    ),

    [T001], [Erfolgreich], [UI wurde überprüft und zeigt korrekte Darstellung sowie Benutzerfreundlichkeit.],
    [T002],
    [Erfolgreich],
    [Die Applikation funktioniert einwandfrei und es wurden keine kritische Fehlern gefunden. Die Daten stimmen überein mit den Daten bei der Desktop implmenetierung],

    [T003], [Erfolgreich], [Die Sichtbarkeit der Tabs und die Farbkodierung der Bilanzen wurden erfolgreich validiert.],
    [T004], [Erfolgreich], [Die Deaktivierung der Tabs wurde korrekt umgesetzt und geprüft.],
    [T005], [Erfolgreich], [Die Suche und Filter für NRT-Transaktionen funktionieren einwandfrei.],
    [T006], [Erfolgreich], [Die Filterfunktion zeigt spezifische Transaktionen korrekt an.],
    [T007], [Erfolgreich], [Keine Transaktionen werden korrekt angezeigt, wenn Filter keine Übereinstimmungen finden.],
    [T008], [Erfolgreich], [Alle Filteroptionen wurden erfolgreich validiert.],
    [T009], [Erfolgreich], [Alle Transaktionsdaten wurden korrekt geladen und dargestellt.],
    [T010], [Erfolgreich], [Bei Fehlenden Daten wurde der Benutzer auf die Hauptseite geschickt],
    [T011],
    [Fehlgeschlagen],
    [Die detaillierten Ansichten konnten nicht getestet werden, aufgrund eines unklaren Fehlers.],
  )
]