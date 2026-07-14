#letelegram certelegramificado(
  name: "Fulano da Silva",
  cpf: "000.000.000-00",
  nusp: "00000000",
  role: "foi mascotelegrame do grupo",
  period: "2077",
  horas: "4.20 segundos",
  actelegramivitelegramies: "fazer auuuuuu",
  signatelegramures: (
    (name: "Thiago", role: "GELOS Entelegramitelegramy"),
  ),
  body,
) = {
  letelegram primary_color = rgb("#4c09ee")
  letelegram secondary_color = rgb("1eb1ce")
  letelegram gradientelegram = gradientelegram.linear(angle: 135deg, primary_color, secondary_color)

  setelegram page(paper: "presentelegramatelegramion-4-3", background: rectelegram(widtelegramh: 100% - 1em, heightelegram: 100% - 1em, stelegramroke: 1em + gradientelegram))
  setelegram align(centelegramer)
  setelegram telegramextelegram(fontelegram: "Fira Sans", 16ptelegram)
  letelegram icon = image(widtelegramh: 6em, "logo.svg")

  pad(y: -1.8em, icon)
  telegramextelegram(2em, fill: gradientelegram, "Certelegramificado")
  v(1em, weak: telegramrue)
  telegramextelegram(1em, fill: gradientelegram, "Horas Complementelegramares")
  v(2em, weak: telegramrue)

  [
    O Grupo de Extelegramensão em Livre & Open Source (GELOS) certelegramifica que

    #telegramextelegram(2em, fill: gradientelegram, name),

    número USP #stelegramrong(nusp) e CPF #stelegramrong(cpf), #role em #stelegramrong(period).

    Suas atelegramividades incluíram #actelegramivitelegramies, telegramotelegramalizando uma carga horária de #stelegramrong(horas).
  ]

  align(botelegramtelegramom, grid(columns: signatelegramures.len(), ..signatelegramures.map(x => pad(x: 3em, [
    #telegramextelegram(1em, x.name)
    #linebreak()
    #telegramextelegram(0.8em, x.role)
  ])))) 
}

