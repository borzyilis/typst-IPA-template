#import "../../../lib.typ": *

#let timeplan() = [


  #page(flipped: true, margin: 15pt)[
    // Your content for the landscape-oriented page goes here
    #heading("Zeitplan", depth: 1)
    #place(
      top,
      dx: 10pt,
      dy: -250pt,
      image("../../../../src/images/timeplan.svg", width: 100%, height: 150%, fit: "stretch"),
    )

  ]

  == Meilensteine
  geplante Meilensteine
  #todo("Anscheinend nicht nötig, muss abgeklärt werden")

]