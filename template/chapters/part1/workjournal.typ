#import "../../assets/journaling_table.typ": journal_table
#import "../../lib.typ": *

// Journal Data
#let journal_data_day = (([#todo[Ausfüllen]], [#todo[Ausfüllen]], [#todo[Ausfüllen]]),)


// Render all journals
#let workjournal() = [
  = Arbeitsjournal

  == Tag 1, Dienstag-Nachmittag, 12.11.2024
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

  == Tag 2, Mittwoch, 13.11.2024
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

  == Tag 3, Montag, 18.11.2024
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

  == Tag 4, Dienstag, 19.11.2024
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

  == Tag 10, Dienstag, 03.11.2024
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

  == Tag 11, Mittwoch, 04.11.2024
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
]

