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

  == Tag 4, Dienstag, 19.11.2024
  #let journal_data_day4 = (
    ("Transaktions-Detail Ansicht implementieren", "8H", "8H"),
  )

  #journal_table(journal_data_day4)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  - Fortschritte bei der Transaktions-Detail Ansicht erzielt

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  - Viel Zeit für Branching und Konfliktlösungen aufgewendet

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  Ich musste zahlreiche Konflikte im Zusammenhang mit Branching lösen. Das war lehrreich, aber zeitaufwendig. In Zukunft werde ich sicherstellen, dass ich die richtige Grundlage für Branches wähle, um unnötige Konflikte zu vermeiden.

  #pagebreak()

  == Tag 5, Mittwoch, 20.11.2024
  #journal_table(journal_data_day)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  #todo[Ausfüllen]

  #pagebreak()

  == Tag 6, Montag, 25.11.2024
  #let journal_data_day6 = (
    ("Transaktionsfilter implementieren", "8H", todo[Ausfüllen]),
  )

  #journal_table(journal_data_day6)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  #todo[Ausfüllen]

  #pagebreak()

  == Tag 7, Montag, 26.11.2024
  #journal_table(journal_data_day)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  #todo[Ausfüllen]

  #pagebreak()

  == Tag 8, Dienstag, 27.11.2024
  #journal_table(journal_data_day)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  #todo[Ausfüllen]

  #pagebreak()

  == Tag 9, Montag, 02.12.2024
  #let journal_data_day6 = (
    ("Transaktionsfilter implementieren", "8H", todo[Ausfüllen]),
  )
  #journal_table(journal_data_day)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  #todo[Ausfüllen]

  #pagebreak()

  == Tag 10, Dienstag, 03.12.2024
  #journal_table(journal_data_day)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  #todo[Ausfüllen]

  #pagebreak()

  == Tag 11, Mittwoch, 04.12.2024
  #journal_table(journal_data_day)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  #todo[Ausfüllen]

  #pagebreak()

  == Tag 12, Montag, 09.12.2024
  #let journal_data_12 = (
    ([Filter für die Cash Account Seite integrieren], [1H], [#todo[Ausfüllen]]),
    ([Filter für die Custody Transactions Detail Seite integrieren], [1H], [#todo[Ausfüllen]]),
  )
  #journal_table(journal_data_12)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  #todo[Ausfüllen]

  #pagebreak()

  == Tag 12, Dienstag, 10.12.2024
  #let journal_data_12 = (
    ([Tests für Filter functionalität erstellen], [1H], [#todo[Ausfüllen]]),
    ([Filter für die Custody Transactions Detail Seite integrieren], [1H], [#todo[Ausfüllen]]),
  )
  #journal_table(journal_data_12)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  #todo[Ausfüllen]

  #pagebreak()

  == Tag 12, Mittwoch, 11.12.2024
  #let journal_data_12 = (
    ([Tests für die detalierten Ansichten erstellen], [1H], [#todo[Ausfüllen]]),
    ([Dokumentation fertigstellen], [4H], [#todo[Ausfüllen]]),
  )
  #journal_table(journal_data_12)

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Ausgeführte Arbeiten]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Herausforderungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Beanspruchte Hilfestellungen]]
  #todo[Ausfüllen]

  #heading(outlined: false, numbering: none)[
    #text(size: 13pt, weight: "bold")[Reflexion]]
  #todo[Ausfüllen]

  #pagebreak()
]

