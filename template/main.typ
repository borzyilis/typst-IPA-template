#import "lib.typ": *
#import "abbreviations.typ": abbreviations
#import "literature_and_bibliography.typ": literature-and-bibliography
#import "attachements.typ": attachements


// Teil 1
#import "chapters/part1/introduction.typ": introduction
#import "chapters/part1/project_assignment.typ": project_assignment
#import "chapters/part1/required/timeplan.typ": timeplan
#import "chapters/part1/summary.typ": summary
#import "chapters/part1/workjournal.typ": workjournal

// Teil 2
#import "chapters/part2/brief_summary.typ": brief_summary
#import "chapters/part2/inform.typ": inform
#import "chapters/part2/decide.typ": decide
#import "chapters/part2/realise.typ": realise
#import "chapters/part2/control.typ": control
#import "chapters/part2/evaluate.typ": evaluate



#show: project.with(
  lang: "de",
  authors: (
    (
      name: "Martin Jaskelevic",
      id: "+41 78 4023456",
      email: "martin.jaskelevic@juliusbaer.com",
      phone: "123123"
    ),
  ),
  title: "Probe IPA",
  subtitle: "Implementierung der Mobile Features",
  date: "29.07.2024",
  version: none,
  thesis-compliant: false, // Setze es auf false, wenn es nur für Dokumentationen genutzt wird

  // Format
  h1-spacing: 0.5em,
  line-spacing: 0.65em,
  font: "Calibri",
  font-size: 11pt,
  hyphenate: false,
  side-margins: (
    left: 2.54cm, // required
    right: 2.54cm, // required
    top: 2.54cm, // required
    bottom: 2.54cm, // required
  ),

  // Color settings
  primary-color: black,
  secondary-color: rgb("#000E66"),
  text-color: black,

  // Cover sheet
  custom-cover-sheet: none,
  cover-sheet: (
    employer: (
      name: "Bank Julius Bär AG.",
      street: "Hohlstrasse 600",
      city: "Altstetten, Zürich",
      logo: image("/typst-IPA-template/src/images/jb-logo.jpeg")
    )
  ),

  // Outlines
  depth-toc: 4,
  outlines-indent: 1em,
  show-list-of-abbreviations: true, // Nur sichtbar, wenn tatsächlich mit `gls` oder `glspl` Abkürzungen im Text aufgerufen werden
  list-of-abbreviations: abbreviations(),
  show-list-of-tables: true,
  show-list-of-todos: true,
  literature-and-bibliography: literature-and-bibliography(),
  list-of-attachements: attachements(),
)

#heading("TEIL 1: UMFELD UND ABLAUF", numbering: none)
#introduction()
#project_assignment()
#timeplan()
#workjournal()
#summary()

#heading("TEIL 2: PROJEKT - UMSETZUNG", numbering: none)

#brief_summary()
#inform()
#decide()
#realise()
#control()
#evaluate()
= Schluss/Zusammenfassung/Fazit<zusammenfassung>
