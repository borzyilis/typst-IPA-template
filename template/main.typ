#import "lib.typ": *
#import "abbreviations.typ": abbreviations
#import "literature_and_bibliography.typ": literature-and-bibliography
#import "attachements.typ": attachements


// Teil 1
#import "chapters/part1/introduction.typ": introduction
#import "chapters/part1/project_assignment.typ": project_assignment
#import "chapters/part1/required/organisation.typ": organisation
#import "chapters/part1/required/timeplan.typ": timeplan
#import "chapters/part1/summary.typ": summary
#import "chapters/part1/workjournal.typ": workjournal

// Teil 2
#import "chapters/part2/brief_summary.typ": brief_summary
#import "chapters/part2/inform.typ": inform
#import "chapters/part2/plan.typ": plan
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
  show-list-of-figures: true,
  show-list-of-tables: false,
  show-list-of-todos: true,
  literature-and-bibliography: none,
  list-of-attachements: attachements(),
)

#heading("TEIL 1: UMFELD UND ABLAUF", numbering: none)
#organisation()
#project_assignment()
#timeplan()
#workjournal()
#summary()

#pagebreak()
#heading("TEIL 2: PROJEKT - UMSETZUNG", numbering: none)

#brief_summary()
#inform()
#plan()
#decide()
#realise()
#control()
#evaluate()

#pagebreak()

#heading("BENUTZUNG DER KI-Tools", numbering: none)

Während des Projekts habe ich Chat GPT aus verschiedenen Gründen genutzt. Da die Dokumentation mit Typst #gls("Typst") strukturiert ist, konnte ich Chat GPT verwenden, um verschiedene Teile der Dokumentation zu formatieren und zu korrigieren. Dies hat mir ermöglicht, die Konsistenz und Lesbarkeit der Dokumentation zu verbessern, insbesondere bei komplexen Formatierungsaufgaben.

Beim Programmieren habe ich Chat GPT hauptsächlich zum Debuggen und für Beispiele verwendet, wie der Code implementiert und verbessert werden könnte. Durch den Einsatz von Chat GPT konnte ich effizienter Lösungen für auftretende Probleme finden und meine Implementierungen optimieren. Es hat mir auch geholfen, alternative Ansätze zu evaluieren und bessere Entscheidungen bei der Codegestaltung zu treffen.

Die Unterstützung durch Chat GPT trug dazu bei, Zeit zu sparen und sicherzustellen, dass sowohl der dokumentarische als auch der technische Teil des Projekts eine hohe Qualität aufweisen.


#emph([
  Manche Konversationen dürfen nicht geteilt werden, wenn sie Bilder inhalten.
])