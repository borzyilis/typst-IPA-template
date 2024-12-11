#import "../../lib.typ": *

#let inform() = [
  = Informieren
  #text(weight: "bold")[Zielsetzung]

  Die aktuelle Transaktionsansicht und Funktionalität in eAssets erfüllen nicht mehr die Anforderungen des modernen eBankings. Das Ziel ist es, die mobile Version so zu verbessern, dass sie den gleichen Stand wie die Desktop-Version erreicht. Dabei soll eine Lösung entstehen, die modern, benutzerfreundlich und flexibel ist.

  #text(weight: "bold")[Transaktions-Auflistung]

  Die getrennten Transaktionslisten für Portfolio und Kunden sollen in einer kombinierten Ansicht dargestellt werden und die NRT-Daten (Near-Real-Time) müssen visuell hervorgehoben werden, um Echtzeit-Daten von anderen zu unterscheiden.

  #text(weight: "bold")[Transaktions-Detail-Ansicht]

  Anpassung der bestehenden Detailansicht, um zusätzliche Daten anzuzeigen.
  Notwendigkeit eines neuen Backend-Calls zur Abrufung spezifischer Informationen.

  #text(weight: "bold")[Transaktions-Filter]

  Die Erweiterung der Filteroptionen soll mit einem klaren Fokus auf eine Frontend-basierte Filterung umgesetzt werden. Ziel ist es, eine neue Lösung speziell für die Filterung im Frontend für mobile Anwendungen zu entwickeln. Diese Lösung soll sowohl die Performance verbessern als auch die Benutzerfreundlichkeit erhöhen. Die Implementierung muss modular und zukunftssicher gestaltet werden, um spätere Erweiterungen und Anpassungen effizient zu ermöglichen.

]