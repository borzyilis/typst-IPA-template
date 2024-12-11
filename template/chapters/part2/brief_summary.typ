#import "../../lib.typ": *

#let brief_summary() = [

  = Kurzfassung
  Die Kurzfassung gibt einen Überblick über das vorliegende Projekt.

  == Ausgangssituation

  eAssets ist eine von Julius Bär entwickelte globale Applikation, die zur Darstellung von Vermögensdaten in verschiedenen eBanking-Lösungen der Bank dient. Diese Applikation gewährleistet, dass Kunden Zugang zu präzisen und aktuellen Informationen über ihre Vermögenswerte haben.

  Im Rahmen des Projekts wurden Transaktionsdaten, die Bewegungen wie Wertschriftentransaktionen, Bargeldbezüge oder Zahlungen darstellen, in ein neues Mobile-Format implementiert. Ziel war es, diese Daten in Listen- und Detailansichten darzustellen, Filter-Optionen bereitzustellen und sicherzustellen, dass das Design den Prototypen entspricht. Dieses Mobile-Format soll in der offiziellen JB Mobile App ausgerollt werden und allen Schweizer Kunden zur Verfügung stehen.

  == Umsetzung

  Die IPA wurde mit der Projektmethode IPERKA geplant und umgesetzt. Das Projekt gliederte sich in mehrere Schritte:
  - Untersuchung der bestehenden Desktop-Implementierung, um deren Logik und Datenhandling zu verstehen.
  - Entwicklung der Mobile Features: Implementierung einer Transaktionsübersicht, Detailseiten sowie eines Filtersystems.
  - Durchführung von Fehleranalysen und Optimierungen der entwickelten Features mithilfe manueller sowie automatisierter #gls("e2e"), die mit Cypress geschrieben wurden, um den Anforderungen der Abteilung gerecht zu werden.
  - Enge Zusammenarbeit mit dem #gls("po") und kontinuierliche Überprüfung, ob die festgelegten Anforderungen erfüllt wurden.

    Und mehr...

  Die verwendeten Technologien umfassten React und spezifische Bibliotheken für Form-Handling und Filter-Logik. Git-Branching sowie Methoden wie Cherry-Picking, Rebasing und Interactive Rebasing wurden eingesetzt, um eine saubere und strukturierte Codebasis sicherzustellen.

  == Ergebnis

  Es wurde ein Mobile-Format für die Darstellung von Transaktionsdaten entwickelt, das:
  - Eine aktualisierte Version der Listen- und Detailansichten bietet, die vom PO definiert wurden.
  - Filter-Optionen integriert, die Kunden eine intuitive Navigation durch ihre Daten ermöglichen.
  - Ein ästhetisch ansprechendes UI/UX-Design bietet, das den Prototypen und den Anforderungen des POs entspricht.

  Die Anwendung wurde für die zukünftige Integration in die JB Mobile App vorbereitet. Einige Herausforderungen, wie die korrekte Handhabung von Datenflüssen und die Anpassung neuer Bibliotheken, konnten erfolgreich bewältigt werden. Das Ergebnis ist ein solides Produkt, das die hohen Qualitätsstandards von Julius Bär erfüllt und ein angenehmes Kundenerlebnis sicherstellt.
  #pagebreak()






]