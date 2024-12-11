#import "../../lib.typ": *

#let project_assignment() = [
  = Ausgangslage und Aufgabenstellung<aufgabenstellung>

  == Ausgangslage
  eAssets ist eine von Julius Bär selbst entwickelte, globale Applikation, welche zur Darstellung von Vermögensdaten in verschiedenen von der Bank angebotenen eBanking-Lösungen dient. Je nach Buchungszentrum bezieht das Backend der eAssets-Applikation Daten über eine API von einer BJB in-house Datenquelle und leitet sie dem Frontend zwecks Datenanzeige für den User weiter. In der Schweiz ist eAssets eine Komponente des neuen JB eBankings, welches im ersten Halbjahr 2025 für mehrere zehntausend Kundinnen und Kunden ausgerollt wird.

  Die Applikation erfordert ein sehr hohes Mass an Qualität, da sich die User auf die Korrektheit der angezeigten Daten verlassen. Die Reputation der Bank ist u.a. direkt abhängig davon, dass das Vermögensreporting zutreffende Informationen anzeigt. Entsprechend bedarf es bei der Entwicklung von eAssets eines hohen Grads an Präzision in Bezug auf das Mapping der im Frontend angezeigten Datenfelder auf das korrekte Gegenstück in der Datenbank/ Datenquelle. Da eBanking die virtuelle Visitenkarte der Bank ist, bestehen hier ausserdem hohe ästhetische Ansprüche im Sinne eines tadellosen UI/UX-Designs, welches der Frontend-Entwickler umzusetzen hat. Nicht zuletzt müssen auch die Antwortzeiten (response times) der Applikation beachtet und optimiert werden, um ein angenehmes Kundenerlebnis zu gewährleisten.

  Die angezeigten Daten in eAssets können grob in Positionsdaten, Porfolio-Performance-Daten und Transaktionsdaten eingeteilt werden. Die Transaktionsdaten sind insbesondere darum für Kundinnen und Kunden der Bank wichtig, um nachzuvollziehen, welche Bewegungen sich im Kontext ihres Portfolios ereignet haben (Wertschriftentransaktionen, Bargeldbezüge, Zahlungen, etc.). Ziel dieses Projekts ist es, basierend auf der Transaktionsübersicht des eAssets-Desktop-Formats ein Mobile-Format zu erstellen, welches korrekte Daten in Form von Listen und Detail-Seiten darstellt, Filter-Optionen bietet und sich generell nach dem festgelegten UI-Design-Prototypen orientiert. Das erstellte Produkt wird für alle Schweizer Kundinnen und Kunden in der offiziellen JB Mobile App ersichtlich sein.

  == Detalierte Aufgabenstellung

  Die Transaktionen-Ansicht in eAssets entspricht nicht mehr den wachsenden Anforderungen für das eBanking. Auf Desktop wurde hierfür bereits eine neue Ansicht entwickelt, auf Mobile ist diese jedoch noch ausstehend.

  Nun soll auch für Mobile die Transaktions-Ansicht für die neuen Anforderungen angepasst und erweitert werden. Dadurch lassen sich drei grundsätzliche Anforderungen spezifizieren, welche es zu bearbeiten gilt.

  #text(weight: "bold")[Transaktions-Auflistung] \
  Auf Portfolio und Kunden-Ebene wurden Transaktionen in zwei separaten Listen dargestellt. Neu soll eine einzelne Liste dargestellt werden, welche beide Transaktionslisten zusammenfasst. Diese neue Liste soll zudem Intra-Day Daten (NRT-Daten) anzeigen und entsprechend auch gekennzeichnet werden, wenn Transaktionen noch nicht vollständig ausgeführt wurden und noch in der Bearbeitung sind.
  Auf Bankkonten- und Instrument-Ebene sollen die bisherigen Listen verwendet werden. Jedoch sollen auch hier NRT-Daten gekennzeichnet werden.

  #text(weight: "bold")[Transaktions-Detail Ansicht] \
  Beim Klick auf eine Transaktion soll eine neue Detail-Ansicht angezeigt werden. Diese Ansicht existiert zwar bereits in der aktuellen Version, jedoch wird diese nur noch für existierende eBanking Releases in dieser Form benötigt. Die neue Ansicht lädt zusätzliche Daten für den Kunden und benötigt somit einen zusätzlichen Backend-Call.

  #text(weight: "bold")[Transaktions-Filter] \
  Die aktuellen Transaktions-Listen und die neu zu erstellende sollen neben einem Datumsbereich neu noch zusätzliche Filter-Optionen aufweisen. Diese zusätzlichen Filter sollen jedoch, entgegen dem Datumsbereich Filter, im Frontend das Filtern der Daten vornehmen.
  Da bisher kein Konzept für die Filterung der Daten im Frontend auf Mobile existiert, soll ein nachhaltiger Ansatz hier evaluiert werden.

  #pagebreak()

  #text(weight: "bold")[Ferner zu beachten] \
  eAssets ist eine globale Lösung von der Julius Bär und deswegen in einer Vielzahl von Systemen in unterschiedlichen Ländern veröffentlicht. Deswegen kann es sein, dass nicht alle Funktionen von allen Systemen angeboten werden.
  Relevant für diese Aufgabenstellung ist, dass die eBanking Releases in Luxemburg und Monaco sowohl das NRT-Highlighting als auch den zusätzlichen Backend-Call für Transaktions-Details vorerst nicht anbieten werden. Diese wird in neuen Releases von eAssets angeboten.
  Die Anforderungen sind jedoch so zu realisieren, dass die eBanking Lösung sowohl in der Schweiz mit vollem Funktionsumfang als auch in den anderen Ländern mit dem bisherigen Funktionsumfang veröffentlicht werden kann, um den monatlichen Release-Cycle vom eBanking nicht zu brechen.

  Design Anforderungen
  Für alle relevanten Ansichten existieren Figma-Designs. Diese gilt es möglichst exakt nachzubilden. Ausnahme sind geänderte Requirements seitens PO.







]