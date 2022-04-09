// ignore: camel_case_types
class Foods {
  // ignore: non_constant_identifier_names
  String name;
  String ImageUrl;
  String detail;
  String prise;
  Foods(this.ImageUrl, this.prise, this.detail, this.name);
}

List<Foods> list = [
  Foods(
      "images/burger/xalapeno.jpeg",
      "13 000 sum",
      "Хот-дог булочка, фирменный соус, солёные огурцы, помидоры, халапеньо, сырный соус, латук, сосиска",
      "🌭 Xalapenyo Xot-dog"),
  Foods(
      "images/burger/chizdog.jpeg",
      "11 000 sum ",
      "Хот-дог булочка, фирменный соус, солёные огурцы, помидоры, сырный соус, латук, сосиска",
      "Chiz-Dog"),
  Foods(
      "images/burger/xotdog.jpeg",
      "10 000 sum",
      "Пышная булочка, сосиска, кетчуп, майонез, икра, огурцы, помидоры",
      "Xot-Dog"),
  Foods(
      "images/burger/kingdog.jpeg",
      "17 000 sum",
      "Хот-дог булочка, фирменный соус, солёные огурцы, помидоры, сырный соус, сыр, латук, две сосиски",
      "King-Dog")
];

class Lavash {
  String name;
  String ImageUrl;
  String detail;
  String prise;
  Lavash(this.ImageUrl, this.prise, this.detail, this.name);
 
}
 List<Lavash> lavash = [
  Lavash(
      "images/lavash/lavash.jpeg",
      "22 000 sum",
      "Yupqa lavash non, bodring, pomidor, chips, mol go'shti, qizil sous, mayonez.",
      "Lavash"),
  Lavash(
      "images/lavash/lavash_mini.jpeg",
      "20 000",
      "Yupqa lavash non, bodring, pomidor, chips, mol go'shti, qizil sous, mayonez.",
      "Lavash-mini"),
  Lavash(
      "images/lavash/lavash_sirli.jpeg",
      "24 000 sum",
      "Yupqa lavash non, bodring, pomidor, chips, mol go'shti, qizil sous, mayonez.",
      "Lavash-sirli"),
  Lavash(
      "images/lavash/lavash_sirli_mini.jpeg",
      "21 000 sum",
      "Yupqa lavash non, bodring, pomidor, chips, mol go'shti, qizil sous, mayonez.",
      "Lavash-sirli-mini"),
  Lavash(
      "images/lavash/lavash_tandir.jpeg",
      "23 000 sum",
      "Yupqa lavash non, bodring, pomidor, chips, mol go'shti, qizil sous, mayonez.",
      "Lavash-tandir"),
  Lavash(
      "images/lavash/calapeno.jpeg",
      "23 000 sum",
      "Yupqa lavash non, bodring, pomidor, chips, mol go'shti, qizil sous, mayonez.",
      "Lavash-Xalapeno")
];

List<Lavash> lavashRu = [
  Lavash(
      "images/lavash/lavash.jpeg",
      "22 000 sum",
      "Тонкий хлеб-лаваш, огурцы, помидоры, чипсы, говядина, красный соус, майонез.",
      "Lavash"),
  Lavash(
      "images/lavash/lavash_mini.jpeg",
      "20 000 сум",
      "Тонкий хлеб-лаваш, огурцы, помидоры, чипсы, говядина, красный соус, майонез.",
      "Lavash-mini"),
  Lavash(
      "images/lavash/lavash_sirli.jpeg",
      "24 000 сум",
      "Тонкий хлеб-лаваш, огурцы, помидоры, чипсы, говядина, красный соус, майонез.",
      "Lavash-sirli"),
  Lavash(
      "images/lavash/lavash_sirli_mini.jpeg",
      "21 000 сум",
      "Тонкий хлеб-лаваш, огурцы, помидоры, чипсы, говядина, красный соус, майонез.",
      "Lavash-sirli-mini"),
  Lavash(
      "images/lavash/lavash_tandir.jpeg",
      "23 000 сум",
      "Тонкий хлеб-лаваш, огурцы, помидоры, чипсы, говядина, красный соус, майонез.",
      "Lavash-tandir"),
  Lavash(
      "images/lavash/calapeno.jpeg",
      "23 000 сум",
      "Тонкий хлеб-лаваш, огурцы, помидоры, чипсы, говядина, красный соус, майонез.",
      "Lavash-Xalapeno")
];
List<Lavash> lavashEn = [
   Lavash(
      "images/lavash/lavash.jpeg",
      "22 000 sum",
      "Thin lavash bread, cucumbers, tomatoes, chips, beef, red sauce, mayonnaise.",
      "Lavash"),
  Lavash(
      "images/lavash/lavash_mini.jpeg",
      "20 000 sum",
      "Thin lavash bread, cucumbers, tomatoes, chips, beef, red sauce, mayonnaise.",
      "Lavash-mini"),
  Lavash(
      "images/lavash/lavash_sirli.jpeg",
      "24 000 сум",
      "Thin lavash bread, cucumbers, tomatoes, chips, beef, red sauce, mayonnaise.",
      "Lavash-sirli"),
  Lavash(
      "images/lavash/lavash_sirli_mini.jpeg",
      "21 000 sum",
      "Thin lavash bread, cucumbers, tomatoes, chips, beef, red sauce, mayonnaise.",
      "Lavash-sirli-mini"),
  Lavash(
      "images/lavash/lavash_tandir.jpeg",
      "23 000 sum",
      "Thin lavash bread, cucumbers, tomatoes, chips, beef, red sauce, mayonnaise.",
      "Lavash-tandir"),
  Lavash(
      "images/lavash/calapeno.jpeg",
      "23 000 sum",
      "Thin lavash bread, cucumbers, tomatoes, chips, beef, red sauce, mayonnaise.",
      "Lavash-Xalapeno")
];




class Pepsi {
  // ignore: non_constant_identifier_names
  String name;
  String ImageUrl;
  String detail;
  String prise;
  Pepsi(this.ImageUrl, this.prise, this.detail, this.name);
}

List<Pepsi> pepsi = [
  Pepsi("images/pepsi/limonli_choy.png", "5 000 sum", "Чай с Лимоном",
      "🥃 Limonli choy"),
  Pepsi(
      "images/pepsi/pepsi_stakan.jpeg", "6 000 sum", "Pepsi", "🥤 Pepsi 0.4L"),
  Pepsi("images/pepsi/pepsi_small.jpeg", "6 000 sum", "Pepsi", "🥤 Pepsi 0.5L"),
  Pepsi(
      "images/pepsi/pepsi_medium .jpeg", "11 500 sum", "Pepsi", "🥤 Pepsi 1L"),
  Pepsi("images/pepsi/pepsi_big.jpeg", "14 000", "Pepsi", "🥤 Pepsi 1L"),
  Pepsi("images/pepsi/sok.jpeg", "12 000 sum", "Соки", "🍹 Sok Сочная Долина"),
  Pepsi("images/pepsi/gazli_suv.jpeg", "2 000 sum", "Вода с газом 0,5л",
      "Gazli suv 0,5L"),
  Pepsi("images/pepsi/gazsiz_suv.jpeg", "2 000 sum", "Вода  0,5л",
      "Gazli suv 0,5L"),
  Pepsi("images/pepsi/mix_kofe.jpeg", "7 000 sum", "Кофе 3в1", "☕️ Kofe 3v1"),
  Pepsi("images/pepsi/qora_kofe.jpeg", "7 000 sum", "Чёрный кофе",
      "☕️ Qora Kofe"),
  Pepsi("images/pepsi/qora_choy.jpeg", "2 000 sum", "Чёрный чай",
      " 🍵 Qora choy"),
  Pepsi(
      "images/pepsi/kok_choy.jpeg", "2 000 sum", "Зеленый чай", " 🍵 Ko'k choy")
];

class Pizza {
  // ignore: non_constant_identifier_names
  String name;
  String ImageUrl;
  String detail;
  String prise;
  Pizza(this.ImageUrl, this.prise, this.detail, this.name);
}

List<Pizza> pizza = [
  Pizza(
      "images/pitsa/kombo_pitsa.jpeg",
      "69 000 sum",
      "Белый соус, оливки, шампиньоны, болгарский перец, помидоры, копченная индейка, копченная колбаса, говядина, сосиски, сыр Моцарелла и Акбел.",
      "🍕 Kombo"),
  Pizza(
      "images/pitsa/margarita.jpeg",
      "55 000 sum",
      "Фирменный белый соус, помидоры, сыр Моцарелла и Акбел.",
      "    Margarita"),
  Pizza(
      "images/pitsa/goshtli_pitsa.jpeg",
      "70 000 sum",
      "Томатный соус “,OQTEPA”, куриное мясо, болгарский перец, говядина, помидоры, сыр Моцарелла и Акбел",
      "🍕 Go'shtli"),
  Pizza(
      "images/pitsa/qazi-pitsa.jpeg",
      "70 000 sum",
      "Томатный соус “OQTEPA”, кольца сладкого лука “Брунсвик”, казы, сыр Моцарелла и Акбел",
      "Qazili pitsa "),
  Pizza(
      "images/pitsa/margarita.jpeg",
      "58 000 sum",
      "Томатный соус “OQTEPA”, копченная колбаса, сыр Моцарелла и Акбел.",
      "🍕 Pepperoni"),
  Pizza(
      "images/pitsa/qoziqorin_pitsa.png",
      "58 000 sum",
      "Томатный соус OQ TEPA, грибы, чесночное масло, орегано, крупная паприка.",
      "🍕Qo’ziqorinli s"),
  Pizza(
      "images/pitsa/tovuqli_pitsa.png",
      "61 000 sum",
      "Томатный соус OQ TEPA, индейка, курица, грибы, оливки, сыр, орегано",
      "Tovuqli pitsa ")
];

class Salat {
  // ignore: non_constant_identifier_names
  String name;
  String ImageUrl;
  String detail;
  String prise;
  Salat(this.ImageUrl, this.prise, this.detail, this.name);
}

List<Salat> salat = [
  Salat(
      "images/salat/olivye.jpeg",
      "17 000сум",
      "Варенная говядина, картофель, морковь и куринные яйца с добавлением соленых огурцов, зеленого горошка и мойонез.",
      "🥗 Olivye"),
  Salat("images/salat/kapriz.jpeg", "18 500сум",
      "Копченная колбаса, индейка, казы, сыр, майонез.", "Mujskoy Kapriz"),
  Salat(
      "images/salat/sezar.jpeg",
      "18 000сум",
      "Куринное филе, помидоры, айсберг, сыр, крутоны, чесночный соус.",
      "Sezar")
];

class Sandvich {
  // ignore: non_constant_identifier_names
  String name;
  String ImageUrl;
  String detail;
  String prise;
  Sandvich(this.ImageUrl, this.prise, this.detail, this.name);
}

List<Sandvich> sandvich = [
  Sandvich(
      "images/sandvich/klab.jpeg",
      "23 000сум",
      "Тостерный хлеб, фирменный соус, огурцы, помидоры, куриное филе, латук, сыр, картофель фри",
      "🥪 Klab-Sendvich"),
  Sandvich(
      "images/sandvich/toster.jpeg",
      "18 000сум",
      "Тостерный хлеб, фирменный соус, огурцы, помидоры, куриное филе, латук",
      "Toster")
];

class Set {
  String name;
  String ImageUrl;
  String detail;
  String prise;
  Set(this.ImageUrl, this.prise, this.detail, this.name);
}

List<Set> set = [
  Set("images/set/klassika.jpeg", "31 000сум", "Бургер, Фри, Pepsi 0,4L",
      "Set Klassika"),
  Set("images/set/gurman.jpeg", "31 000сум", "Шаурма, Фри, Pepsi 0,4L",
      "🍱 Set Gurman"),
  Set("images/set/skromniy.png", "31 000сум", "Лаваш мини, Фри, Pepsi 0,4L",
      'Set Skromnyaga'),
  Set("images/set/lyubov.jpeg", "39 000сум",
      "Клаб сэндвич, оливье, пепси 0,5 литр", "Set Lyubov"),
  Set("images/set/drujba.jpeg", "87 000сум", "Пицца Комбо, Цезарь, Pepsi 1,5L",
      "Set Drujba"),
  Set(
      "images/set/ramazon_set.jpeg",
      "27 000сум",
      "Kotlet mini, salat miks, qizil sous, salatga maxsus sous, xurmo, fri",
      "Рамазон сет")
];

class Shaurma {
  String name;
  String ImageUrl;
  String detail;
  String prise;
  Shaurma(this.ImageUrl, this.prise, this.detail, this.name);
}

List<Shaurma> shaurma = [
  Shaurma(
      "images/shaurma/shaurma.jpeg",
      "18 000сум",
      "Хлеб из тандыра «Пита», говядина, огурцы, помидоры, красный соус, кольца сладкого лука «Брунсвик»",
      "🍔 Shaurma"),
  Shaurma(
      "images/shaurma/big_shaurma.jpeg",
      "22 000сум",
      "Авторский хлеб «Экмек», белый и красный соусы, чипсы, говядина, огурцы, помидоры.",
      "Big Doner")
];

class Sous {
  String name;
  String ImageUrl;
  String detail;
  String prise;
  Sous(this.ImageUrl, this.prise, this.detail, this.name);
}

List<Sous> sous = [
  Sous("images/sous/ketchup.jpeg", "1 000сум", "Ketchup", "Ketchup"),
  Sous("images/sous/mayonezli.jpeg", "1 000сум", "Майонез", "🍅 Mayonez"),
  Sous("images/sous/pishloqli.jpeg", "2 000сум", "Сыр", "🧀 Sirli sous"),
  Sous("images/sous/chili.jpeg", "1 000сум", "Chili sous", "Chili")
];

class Hotdog {
  String name;
  String ImageUrl;
  String detail;
  String prise;
  Hotdog(this.ImageUrl, this.prise, this.detail, this.name);
}

List<Hotdog> hotdog = [
  Hotdog(
      "images/hotdog/xalapeno.jpeg",
      "13 000сум",
      "Хот-дог булочка, фирменный соус, солёные огурцы, помидоры, халапеньо, сырный соус, латук, сосиска",
      "13 000сум"),
  Hotdog(
      "images/hotdog/chizdog.jpeg",
      "11 000сум",
      "Хот-дог булочка, фирменный соус, солёные огурцы, помидоры, сырный соус, латук, сосиска",
      "Chiz-Dog"),
  Hotdog("images/hotdog/xotdog.jpeg", "10 000сум", "10 000сум", "Xot-Dog"),
  Hotdog(
      "images/hotdog/kingdog.jpeg",
      "17 000сум",
      "Хот-дог булочка, фирменный соус, солёные огурцы, помидоры, сырный соус, сыр, латук, две сосиски",
      "King-Dog")
];
