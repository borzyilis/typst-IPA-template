#import "../../../lib.typ": *

#let organisation() = [
  = Projektaufbauorganisation

  #figure(
    image("/typst-IPA-template/src/images/organigram.svg"),
    caption: [Organigram],
  )

  #table(
    columns: (1fr, 1fr, 4fr),
    stroke: none,
    fill: (x, y) => if y == 0 { gray } else { none },
    align: (x, y) => if y == 0 { horizon } else if x == 0 { left } else { left },
    table.header(
      text(size: 14pt)[*Rolle*],
      text(size: 14pt)[*Name*],
      text(size: 14pt)[*Aufgabe und Verantwortung*],
    ),

    [Kandidat],
    [Martin Jaskelevic],
    [Die Anforderungen in der Aufgabenstellung
      werden innerhalb der gegebenen Zeit vollständig
      und korrekt erfüllt und umgesetzt. Die volle
      Verantwortung wird übernommen
    ],

    [Stakeholder/ Auftraggeber],
    [Nico Hoppler],
    [Bestimmt die Anforderungen die implmenetiert werden müssen. Kann während der Entwicklung die Anforderungen nach dem Feedback ändern],

    [Vorgesetzte Fachkraft],
    [Sandro Schwager/ Moussa Faye],
    [Bespricht die Arbeit, die gemacht werden muss, mit dem Stakeholder und erstellt anhand von den Anforderungen eine Aufgabestellung. Garantiert, dass der Kanidat arbeiten kann und beurteilt die erzielten Resultate der Arbeit. Ist verantwortlich für einen reibungslosen Ablauf der IPA],

    [Hauptexperte], [Jonas Müller], [-],
    [Nebenexperte],
    [Jonas Müller],
    [Verantwortlich für die korrekte Protokollierung der Präsentation, der Demo und des Fachgesprächs],
  )
]