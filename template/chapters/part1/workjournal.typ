#import "../../assets/journaling_table.typ": journal_table
#import "../../lib.typ": *

// Journal Data
#let journal_data_day = (([#todo[Ausfüllen]], [#todo[Ausfüllen]], [#todo[Ausfüllen]]),)


// Render all journals
#let workjournal() = [
  = Arbeitsjournal

  == Tag 1, Dienstag-Nachmittag, 12.11.2024
  #let journal_data_day1 = (
    (
      "Aufgabenstellung analysieren",
      "1H",
      "2H",
    ),
    (
      "Fachspezifische Information",
      "1H",
      "0.5H",
    ),
    (
      "Desktop Implementierungen analysieren",
      "1H",
      "0.5H",
    ),
    (
      "Zeitplan erstellen",
      "1H",
      "1.5H",
    ),
    (
      "User Stories priorisieren",
      "0.5H",
      "0.5H",
    ),
  )

  #journal_table(journal_data_day1)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Aufgabenstellung gelesen und verstanden
  - Desktop Implementierungen analysiert
  - IPA-Zeitplan ist erstellt
  - User Stories entsprechend von der Wichtigkeit priorisiert

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Schwierigkeiten bei der Einschätzung des Zeitaufwands für Tätigkeiten
  - Fehlende Konkretisierung der Aufgabenstellung erschwerte die Planung des Gesamtumfangs

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  - Keine externe Hilfestellung benötigt

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Heute habe ich mit meiner IPA begonnen. Im Rahmen meiner gewählten Projektmethode IPERKA habe ich die Phasen Informieren und Planen gestartet. Dabei wurde klar, wie entscheidend eine klar formulierte Aufgabenstellung ist.
  Da einige Aspekte der Aufgabenstellung nicht ausreichend konkretisiert waren, musste ich deutlich mehr Zeit für die Erstellung eines Zeitplans aufwenden. Diese fehlenden Details erschwerten es mir, mich schnell und sicher mit dem Projekt vertraut zu machen.
  Für die nächsten Schritte plane ich, unklare Punkte in der Aufgabenstellung zu klären und zusätzliche Informationen einzuholen, um das Projekt strukturierter und selbstbewusster weiterzuführen.


  #pagebreak()

  == Tag 2, Mittwoch, 13.11.2024
  #let journal_data_day2 = (
    ("Meilensteine definieren", "1H", "1H"),
    ("Lösungsvariante festlegen", "1H", "0.5H"),
    ("Transaktionsliste implementieren", "8H", "8H"),
  )

  #journal_table(journal_data_day2)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Meilensteine erfolgreich definiert
  - Lösungsvariante festgelegt

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Zeitverlust durch Bug-Analyse

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  - Rücksprache mit Sandro bei der Implementierung der Transaktionsliste

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Heute konnte ich zwei wichtige Fortschritte erzielen: Die Meilensteine des Projekts wurden erfolgreich definiert, und ich habe die Transaktionsliste teilweise implementiert.
  Allerdings gab es Herausforderungen bei der Implementierung der Transaktionsliste, die mehr Zeit in Anspruch nahm als geplant. Rückblickend hätte ich meinen Fokus direkt auf die Implementierung legen sollen, statt Zeit in ein Backend-Problem zu investieren, das nicht existierte.


  #pagebreak()

  == Tag 3, Montag, 18.11.2024
  #let journal_data_day3 = (
    ("Transaktionsliste fertig implementieren", "4H", "4H"),
    ("Transaktions-Detail Ansicht implementieren", "8H", "4H"),
  )

  #journal_table(journal_data_day3)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Transaktionsliste fertiggestellt
  - Begonnen mit der Implementierung der Transaktions-Detail Ansicht

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Schwierigkeiten beim Verständnis des AppRouters

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  - Unterstützung von Sandro für die Navigation

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Der Fokus lag heute auf der Navigation innerhalb der App, was mehr Zeit beanspruchte als erwartet. Die Unterstützung durch Sandro war entscheidend, um die Funktionsweise des Routers korrekt zu verstehen.

  #pagebreak()

  #let journal_data_day4 = (
    ("Transaktionsliste", "4H", "4H"),
    ("Transaktions-Detail Ansicht implementieren", "8H", "8H"),
  )

  #journal_table(journal_data_day4)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Fertig mit der Implementierung von Transaktionsliste geworden
  - Angefangen mit der Transaktions-Detail Ansicht und die initiale Version erstellt

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]

  Viel Zeit für Branching und Konfliktlösungen aufgewendet

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]

  Keine

  #heading(outlined: false, numbering: none)[ #text(size: 13pt, weight: "bold")[Reflexion]]
  Ich konnte heute, obwohl verspätet, da ich noch die Transaktionsliste fertig implementieren musste, mit der Implementierung anfangen und die initiale Version von Transaktions-Detail Ansicht erstellen. Ich musste zahlreiche Konflikte im Zusammenhang mit Branching lösen. Das war lehrreich, aber zeitaufwendig. In Zukunft werde ich sicherstellen, dass ich die richtige Grundlage für Branches wähle, um unnötige Konflikte zu vermeiden.

  Das Problem ist, dass ich schon morgen mit der Implementierung von der Filterfunktionalität anfangen muss, aber das wird sehr wahrscheinlich nicht passieren, da ich noch viel zu tun bei der Implementierung von der Detailansicht habe.


  #pagebreak()

  == Tag 5, Mittwoch, 20.11.2024
  #let journal_data_day5 = (
    ("Transaktions-Detail Ansicht implementieren", "8H", "8H"),
  )

  #journal_table(journal_data_day5)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Die detaillierte Transaktions-Detail-Ansicht wurde erstellt, basierend auf den angepassten Komponenten der Desktop-Version für die mobile Version.
  - Übersetzungen wurden aktualisiert.
  - Routing und Navigation wurden angepasst.
  - Skeletons für den Header der Detailseite wurden überarbeitet und verbessert.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Sicherzustellen, dass die Modifikation der Skeletons für die Detailseite keine negativen Auswirkungen auf andere Seiten-Header hatte.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]

  Keine

  #heading(outlined: false, numbering: none)[ #text(size: 13pt, weight: "bold")[Reflexion]]
  Heute war ein produktiver Tag, und ich konnte die Implementierung der Transaktions-Detail-Ansicht abschliessen. Ich glaube, dass ich schneller hätte fertig werden können, wenn die Anpassung der Skeletons nicht so zeitaufwendig gewesen wäre. Es ist ziemlich mühsam, die Skeletons perfekt auf den Inhalt abzustimmen, der geladen wird und die Skeletons ersetzt. Jetzt liege ich einen Tag hinter meinem Zeitplan, was bedeutet, dass ich in den nächsten Tagen aufholen muss.


  #pagebreak()

  == Tag 6, Montag, 25.11.2024
  #let journal_data_day6 = (
    ("Transaktionsfilter implementieren", "8H", "8H"),
  )

  #journal_table(journal_data_day6)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Verständnis des `useForm`-Hooks erarbeitet
  - Relevante Daten zur Befüllung der Optionen für den Filter ausgelesen
  - Erste Logik für die Übergabe von Daten an den Dialog entwickelt

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Grosse Schwierigkeiten beim Verständnis des `useForm`-Hooks und seiner Implementierung
  - Keine bestehenden Beispiele für ähnliche Filterlogik vorhanden

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  - Ich habe Sandro um Unterstützung gebeten, aber aufgrund der Release-Phase hatte er keine Zeit, mir zu helfen.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Heute habe ich nur sehr wenig Fortschritte gemacht, da die meiste Zeit für das Verständnis des `useForm`-Hooks und die Implementierung der Filteransichten verwendet wurde. Da es keine Beispiele für diese Art von Filterlogik gibt und ich der Erste bin, der dieses in eAssets umsetzt, wusste ich nicht wie ich die Optionen weiter an den Dialog weitergeben kann. Ich werde versuchen, die Filterlogik morgen besser zu strukturieren und voranzukommen.


  #pagebreak()

  == Tag 7, Dienstag, 26.11.2024
  #let journal_data_day7 = (
    ("Transaktionsfilter implementieren", "8H", "8H"),
  )
  #journal_table(journal_data_day7)


  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Optionen ausgelesen und korrekt an das Formular als Optionen weitergegeben.
  - Die Ansicht für den Dialog mit den benötigten Filtern erstellt und integriert.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Optionen wurden versehentlich als Werte anstelle von Auswahlmöglichkeiten weitergegeben. Dadurch änderte sich die Liste der Optionen dynamisch mit der Auswahl der Werte, was zu inkonsistentem Verhalten führte.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  Sandro hat mir gezeigt, dass das Problem darin lag, dass ich den Optionen die Standardwerte zugewiesen hatte. Nachdem ich die Liste der Optionen explizit an die `options`-Eigenschaft der Dropdown-Komponente übergeben habe, funktionierte alles korrekt.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Heute habe ich viel Zeit damit verschwendet, herauszufinden, warum sich die Liste der Optionen nach einer Auswahl verändert hat. Nachdem ich bereits zu viel Zeit mit diesem Problem verloren hatte, entschied ich mich, mich auf die Fertigstellung des gesamten Filterflusses zu konzentrieren und die verbleibenden Probleme später anzugehen.

  Die Lösung des Problems war offensichtlich: Optionen und Werte klar zu trennen. Das Problem entstand, weil ich beim Übernehmen von Code aus verschiedenen Quellen die zugrunde liegende Logik nicht vollständig verstanden hatte.

  Ich habe mich von dem komplexen Code einschüchtern lassen, aber letztendlich war er nur eine Wrapper-Schicht für einige UI-Komponenten. Das Problem bestand darin, dass Optionen und Werte im Grunde identisch waren, da `{field}` im Wesentlichen die `value`-Eigenschaft an die MultiSelect-Komponente gemappt hat. Deshalb wurden alle Optionen als ausgewählt angezeigt.


  #pagebreak()

  == Tag 8, Mittwoch, 27.11.2024
  #let journal_data_day8 = (
    ("Transaktionsfilter implementieren", "8H", "8H"),
  )
  #journal_table(journal_data_day8)


  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Optionen mit den Testdaten gefüllt

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]



  #pagebreak()

  == Tag 9, Montag, 02.12.2024
  #let journal_data_day9 = (
    ("Filterlogik verfeinern und implementieren", "6H", "6H"),
    ("Expertenbesuch", "1.5H", "2H"),
  )

  #journal_table(journal_data_day9)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Die Filterlogik wurde mit Unterstützung von ChatGPT umgesetzt, um Daten mit mehreren Optionen korrekt zu filtern.
  - Implementierung in der Komponente verlagert, um Filterung vor der Übergabe an die `CustodyTransactionsList` durchzuführen.
  - Negative Zahlen im Eingabefeld getestet und durch Nutzung einer aktualisierten Desktop-Version des Eingabefelds behoben.
  - Konsistenzprüfung der mobilen Ansicht im Vergleich zur Desktop-Version durchgeführt.
  - Diskussion mit dem PO über die Notwendigkeit bestimmter Filteroptionen, z. B. ISIN, und Bestätigung erhalten, dass diese für die mobile Ansicht nicht benötigt wird.
  - Anfrage an Sandro gestellt, das aktualisierte Eingabefeld in den gemeinsamen Codebereich zu verschieben.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Die initiale Implementierung der Filterlogik in der Gruppierungsfunktion war ineffizient und führte zu falschen Ergebnissen.
  - Das Problem mit den negativen Zahlen erforderte zusätzliche Tests und Anpassungen.
  - Es war notwendig, zwischen mobilen und Desktop-Funktionen zu unterscheiden und spezifische Anpassungen vorzunehmen.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  - ChatGPT wurde genutzt, um komplexe Filterlogik umzusetzen und die optimalen Strukturen für die Filterung zu finden.
  - Unterstützung von Sandro bei der Analyse der Filterlogik und der Anpassung des Eingabefelds.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Die heutige Arbeit war sehr lehrreich. Die ursprüngliche Implementierung der Filterlogik war ineffizient, und Sandros externer Blick war entscheidend, um eine bessere Lösung zu finden. Das Problem mit den negativen Zahlen zeigte, wie wichtig es ist, bestehende Komponenten zu überprüfen und gegebenenfalls anzupassen. Der Expertenbesuch war wertvoll, da er Schwächen in meiner Dokumentation und meinem Ansatz beim Beantworten von Fragen aufzeigte. Ich werde in Zukunft sicherstellen, dass meine Antworten präziser und klarer sind, um Missverständnisse zu vermeiden.


  #pagebreak()

  == Tag 10, Dienstag, 03.12.2024
  #let journal_data_day10 = (
    ("Filterlogik verfeinern und generisch umsetzen", "7.5H", "8H"),
    ("Übersetzungen und Filterlabels anpassen", "1H", "0.5H"),
  )

  #journal_table(journal_data_day10)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Filterlabels angepasst und Übersetzungen aus der Desktop-Version übernommen.
  - Generische Filterfunktion entwickelt, um sie für verschiedene Transaktionstypen wiederzuverwenden.
  - Dynamische Attributauswahl in der Filterfunktion implementiert, um Unterschiede zwischen Cash- und Security-Transaktionen zu berücksichtigen.
  - Strukturierung der generischen Filterlogik getestet und erfolgreich integriert.
  - Filterlogik für `CashTransactionsTab` und `CustodyPositionsTransactions` dupliziert und angepasst.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Schwierigkeiten beim Umgang mit TypeScript-Generics, insbesondere bei der Unterstützung verschiedener Datentypen.
  - Die Auswahl der korrekten Attribute für unterschiedliche Transaktionstypen war komplex und erforderte zusätzliche Debugging-Zeit.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  - ChatGPT wurde verwendet, um die Implementierung der Generics zu unterstützen.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Die Arbeit an der generischen Filterfunktion war anspruchsvoll, da ich keine Erfahrung mit Generics in TypeScript hatte. Durch die Nutzung von ChatGPT konnte ich einige der Herausforderungen lösen, obwohl es manchmal schwieriger war, die generierten Lösungen zu verstehen. Die dynamische Auswahl der Attribute für unterschiedliche Transaktionstypen war lehrreich und zeigte mir die Vorteile einer gut strukturierten, generischen Funktion. Ich habe viel über TypeScript und die Wiederverwendbarkeit von Code gelernt, was mir in zukünftigen Projekten helfen wird.


  #pagebreak()

  == Tag 11, Mittwoch, 04.12.2024
  #let journal_data_day10 = (
    ("Filterlogik verfeinern und generisch umsetzen", "7.5H", "8H"),
    ("Übersetzungen und Filterlabels anpassen", "1H", "0.5H"),
  )

  #journal_table(journal_data_day10)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Filterlabels angepasst und Übersetzungen aus der Desktop-Version übernommen.
  - Generische Filterfunktion entwickelt, um sie für verschiedene Transaktionstypen wiederzuverwenden.
  - Dynamische Attributauswahl in der Filterfunktion implementiert, um Unterschiede zwischen Cash- und Security-Transaktionen zu berücksichtigen.
  - Strukturierung der generischen Filterlogik getestet und erfolgreich integriert.
  - Filterlogik für `CashTransactionsTab` und `CustodyPositionsTransactions` dupliziert und angepasst.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Schwierigkeiten beim Umgang mit TypeScript-Generics, insbesondere bei der Unterstützung verschiedener Datentypen.
  - Die Auswahl der korrekten Attribute für unterschiedliche Transaktionstypen war komplex und erforderte zusätzliche Debugging-Zeit.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  - ChatGPT wurde verwendet, um die Implementierung der Generics zu unterstützen.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Die Arbeit an der generischen Filterfunktion war anspruchsvoll, da ich keine Erfahrung mit Generics in TypeScript hatte. Durch die Nutzung von ChatGPT konnte ich einige der Herausforderungen lösen, obwohl es manchmal schwieriger war, die generierten Lösungen zu verstehen. Die dynamische Auswahl der Attribute für unterschiedliche Transaktionstypen war lehrreich und zeigte mir die Vorteile einer gut strukturierten, generischen Funktion. Ich habe viel über TypeScript und die Wiederverwendbarkeit von Code gelernt, was mir in zukünftigen Projekten helfen wird.


  #pagebreak()

  == Tag 12, Montag, 09.12.2024
  #let journal_data_day11 = (
    ("Filterlogik auf `CashTransactionsTab` erweitern", "4H", "4H"),
    ("Filterlogik auf Asset-Detailansicht und Cash Accounts anwenden", "4H", "4H"),
  )

  #journal_table(journal_data_day11)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Filter auf `CashTransactionsTab` implementiert und getestet.
  - Attribute für unterschiedliche Transaktionstypen mit TypeScript korrekt zugeordnet, um Fehler zu vermeiden.
  - Filterlogik für Asset-Detailansicht übernommen und angepasst.
  - Begonnen mit der Vorbereitung und Durchführung von Cypress-Tests zur Validierung der Funktionalität.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Schwierigkeiten bei der korrekten Typzuweisung, da Transaktionen als unterschiedliche Typen (`SecurityTransaction` und `CashTransaction`) übergeben werden.
  - Reset-Funktionalität des Filters funktionierte nicht wie erwartet und erforderte alternative Ansätze, blieb jedoch unvollständig.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  - Rücksprache mit Sandro zur Aufteilung der Komponenten und deren ursprünglicher Implementierung.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Die Erweiterung der Filterlogik auf `CashTransactionsTab` und die Asset-Detailansicht war erfolgreich, trotz der Herausforderungen bei der Typisierung. Die Erkenntnis, dass TypeScript bei komplexen Typen leicht "den Überblick verliert", hat mir gezeigt, wie wichtig korrektes Casting ist.

  Die Entscheidung, die Reset-Funktionalität vorerst zurückzustellen, war schwierig, aber notwendig, um den Zeitplan einzuhalten. Der Beginn der Cypress-Tests markiert einen wichtigen Meilenstein, um die Qualität der Implementierung sicherzustellen. Ich werde morgen den Fokus darauf legen, die Tests umfassend abzuschliessen.

  #pagebreak()

  == Tag 12, Dienstag, 10.12.2024
  #let journal_data_day12 = (
    ("Tests für Transaktionslisten, Detailansicht und Filterfunktionen erstellen", "6H", "6H"),
    ("Debugging der Transaktionsdetailansicht", "2H", "2H"),
  )

  #journal_table(journal_data_day12)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Begonnen mit der Erstellung eines Test-Suites für alle drei User Stories.
  - Tests für die Transaktionslisten und Filterfunktionen erfolgreich implementiert.
  - Validierung der Filterlogik durchgeführt und Funktionalität bestätigt.
  - Debugging der Transaktionsdetailansicht durchgeführt, da Tests mit Cypress fehlschlugen.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Die Navigation von der Transaktionsliste zur Detailansicht funktionierte in Cypress-Tests nicht wie erwartet.
  - Schwierigkeiten bei der Konfiguration der Mock-Daten für den Test der Transaktionsdetailansicht.
  - Die Ausführung der Cypress-Tests in der UI nahm viel Zeit in Anspruch, was zu langen Wartezeiten bei der Anpassung und erneuten Ausführung der Tests führte.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  - Orientierung an bestehenden Testfällen aus der Desktop-Version, um die Struktur und Logik der Tests zu verbessern.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Heute konnte ich wesentliche Fortschritte bei der Erstellung der Tests erzielen. Die Filter- und Transaktionslisten-Tests waren erfolgreich, was zeigt, dass diese Komponenten korrekt funktionieren. Die Transaktionsdetailansicht stellte jedoch ein Problem dar, da die Tests in Cypress fehlschlugen. Die Orientierung an bestehenden Tests war hilfreich, um die Anforderungen und Logik besser zu verstehen. Die langen Wartezeiten durch die Ausführung der Cypress-Tests waren frustrierend, aber ich habe erkannt, wie wichtig eine effiziente Testumgebung ist, um Iterationen zu beschleunigen.


  #pagebreak()

  == Tag 13, Mittwoch, 11.12.2024
  #let journal_data_day13 = (
    ("Dokumentation schreiben und anpassen", "14H", "8H"),
  )

  #journal_table(journal_data_day13)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Den gesamten Tag mit dem Schreiben und Anpassen der Dokumentation verbracht.
  - Alle vorherigen Einträge überprüft und sprachlich sowie inhaltlich überarbeitet.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Die Konsistenz zwischen den Einträgen sicherzustellen, war zeitaufwendig.
  - Schwierigkeiten bei der sprachlichen Vereinheitlichung ohne den Inhalt zu verändern.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  - Keine direkte Hilfe beansprucht, aber gelegentlich auf vorherige Dokumentationen und Stilvorlagen zurückgegriffen.

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Der Tag war intensiv, aber produktiv. Ich habe alle Einträge der Dokumentation geprüft und sichergestellt, dass sie konsistent, logisch und sprachlich korrekt sind. Die Herausforderung bestand darin, präzise zu sein und gleichzeitig den Inhalt klar und verständlich zu halten. Ich bin zufrieden mit dem Ergebnis, da die Dokumentation jetzt einen professionellen und vollständigen Eindruck macht.


  #pagebreak()
]

