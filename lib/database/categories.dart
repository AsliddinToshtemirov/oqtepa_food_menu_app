// ignore: camel_case_types
class Categories {
  // ignore: non_constant_identifier_names
  String ImageUrl;
  String titile;
  String time;
  Categories(this.ImageUrl, this.time, this.titile);
}

List<Categories> list = [
  Categories("assets/burger.png", "10 minut", "Burger"),
  Categories("assets/categories/fri.png", "5 minut", "Kartoshka fri"),
  Categories("assets/categories/lavash.jpeg", "15 minut", "lavash"),
  Categories("assets/categories/pepsi.png", "-", "Pepsi "),
  Categories("assets/categories/pitsa.jpeg", "20 minut ", "Pitsa"),
  Categories("assets/categories/salat.jpeg", "3 minut", "Salat"),
  Categories("assets/categories/sandvich.png", "10 minut", "Sandvich"),
  Categories("assets/categories/set.jpeg", "15", "Set"),
  Categories("assets/categories/shaurma.jpeg", "10", "Shaurma"),
  Categories("assets/categories/sous.jpeg", "-", "Sous"),
  Categories("assets/categories/xotdog.jpeg", "5", "Xot dog")
];
