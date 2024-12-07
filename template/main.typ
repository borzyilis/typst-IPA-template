#import "lib.typ": *
#import "abbreviations.typ": abbreviations
#import "literature_and_bibliography.typ": literature-and-bibliography
#import "attachements.typ": attachements


// Kapitel
#import "chapters/introduction.typ": introduction
#import "chapters/summary.typ": summary
// Füge hier weitere Kapitel hinzu


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


= Einleitung<einleitung>

#introduction()

= Zeitplan

#page(flipped: true, margin: 15pt)[
  // Your content for the landscape-oriented page goes here
  #heading("Timeplan")
  #place(
    top,
    dx: 10pt,
    dy: -250pt,
    image("../src/images/timeplan.svg", width: 100%, height: 150%, fit: "stretch"),
  )

]

= Hauptteil

// Hier sollten die einzelnen Kapitel aufgerufen werden, welche zuvor unter `chapters` angelegt wurden

== Beispiele

#figure(
  caption: [Your table caption],
  table(
    columns: 3,
    gutter: 3pt,
    [Name], [Age], [Strength],
    [Hannes], [36], [Grace],
    [Irma], [50], [Resourcefulness],
    [Vikram], [49], [Perseverance],
  ),
)

#gls("oidc")
#gls("oidc", long: true)

bla bla bla #gls("oidc")

#gls("kuleuven")

// Referenz zu einer anderen Überschrift
@einleitung

// TODO anlegen
#todo[Das ist ein Beispiel]



= Schluss/Zusammenfassung/Fazit<zusammenfassung>

= Creating a table

#let journal_tables(table1_data, table2_data) = {
  // Ensure the inputs are arrays
  if type(table1_data) != array or type(table2_data) != array {
    "Error: Both parameters must be arrays."
  } else {
    // Create the first table with 4 columns
    let activities_table = table(
      columns: 4,


      ..table1_data
    )

    // Create the second table with 2 columns
    let table2 = table(
      columns: 2,
      ..table2_data
    )

    // Return both tables
    activities_table
    v(0pt, weak: true)
    table2
  }
}

// Data for the 4-column table
#let data_4_columns = (
  [*Header 1*],
  [*Header 2*],
  [*Header 3*],
  [*Header 4*],
  [Cell 1],
  [Cell 2],
  [Cell 3],
  [Cell 4],
  [Cell 5],
  [Cell 6],
  [Cell 7],
  [Cell 8],
);

// Data for the 2-column table
#let data_2_columns = (
  [*Header A*],
  [*Header B*],
  [Cell A1],
  [Cell B1],
  [Cell A2],
  [Cell B2],
);

// Generate the tables
#journal_tables(data_4_columns, data_2_columns)



#summary()