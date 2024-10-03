class Listing {
  final int id;
  final String title;
  final int price;
  final String category;
  final String description;
  final String adress;
  final List<String> tags;
  final String publishDate;
  final List<String> img;
  bool isFavorite;

  Listing(this.id, this.title, this.price, this.category, this.description, 
  this.adress, this.tags, this.publishDate, this.img, this.isFavorite);
}

List<Listing> listings = [
  Listing(
    1,
    "Fender Deluxe Reverb Drip Edge Guitar Combo 1968 - 1969",
    190000,
    "Гитарное усиление",
    "Этот усилитель отлично звучит в студии. Он очень чистый, с большим количеством реверберации. На крышке имеются пятна, а задняя панель немного помята. Усилитель был проверен и обслужен. Это редкий винтажный усилитель, требующий регулярного ухода.",
    "ул. Октябрьская, 16",
    [],
    "2024-05-27",
    ["10011", "10012", "10013"],
    false,
  ),
  Listing(
    2,
    "Boss BD-2 Blues Driver Effect pedal",
    11000,
    "Педали эффектов",
    "BD-2 Blues Driver обеспечивает сливочный, но хрустящий звук, ассоциирующийся с великолепной блюзовой гитарой. Эта популярная педаль обеспечивает мгновенный доступ к теплому овердрайву и эмоциональному искажению, обычно свойственному ламповым усилителям 30-летней давности.",
    "ул. Металлургов, 78",
    [""],
    "2024-05-27",
    ["10024", "10025", "10026", "10027"],
    false
  )
];

List<Listing> favoriteListings = [];