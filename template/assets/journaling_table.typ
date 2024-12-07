#let journal_table(journal_data) = {
  // Create the activities table
  let activities_table = table(
    stroke: none,
    gutter: 2.5pt,
    columns: (4fr, 1fr, 1fr),
    fill: (x, y) => if y == 0 { gray } else { none },
    align: (x, y) => if y == 0 { horizon } else if x == 0 { left } else { center },
    table.header(
      text(size: 14pt)[*Tätigkeiten*],
      text(size: 14pt)[*Aufwand Geplant*],
      text(size: 14pt)[*Aufwand effektiv*],
    ),
    ..for (.., activity, time_planned, time_is) in journal_data {
      (activity, time_planned, time_is)
    }

  )

  // Return the formatted table
  activities_table
}
