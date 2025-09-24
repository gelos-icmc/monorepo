#let certificado(
  name: "Fulano da Silva",
  cpf: "000.000.000-00",
  nusp: "00000000",
  role: "foi mascote do grupo",
  period: "2077",
  horas: "4.20 segundos",
  activities: "fazer auuuuuu",
  signatures: (
    (name: "Thiago", role: "GELOS Entity"),
  ),
  body,
) = {
  let primary_color = rgb("#4c09ee")
  let secondary_color = rgb("1eb1ce")
  let gradient = gradient.linear(angle: 135deg, primary_color, secondary_color)

  set page(paper: "presentation-4-3", background: rect(width: 100% - 1em, height: 100% - 1em, stroke: 1em + gradient))
  set align(center)
  set text(font: "Fira Sans", 16pt)
  let icon = image(width: 6em, "logo.svg")

  pad(y: -1.8em, icon)
  text(2em, fill: gradient, "Certificado")
  v(1em, weak: true)
  text(1em, fill: gradient, "Horas Complementares")
  v(2em, weak: true)

  [
    O Grupo de Extensão em Livre & Open Source (GELOS) certifica que

    #text(2em, fill: gradient, name),

    número USP #strong(nusp) e CPF #strong(cpf), #role em #strong(period).

    Suas atividades incluíram #activities, totalizando uma carga horária de #strong(horas).
  ]

  align(bottom, grid(columns: signatures.len(), ..signatures.map(x => pad(x: 3em, [
    #text(1em, x.name)
    #linebreak()
    #text(0.8em, x.role)
  ])))) 
}

