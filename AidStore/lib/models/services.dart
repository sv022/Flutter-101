class Service {
  final int id;
  final String title;
  final int price;
  final String duration;
  int patientCount;
  bool isCart;

  Service(this.id, this.title, this.price, this.duration, this.patientCount, this.isCart);
}


List<Service> services = [
  Service( 
    1,
    "ПЦР-тест на определение РНК коронавируса стандартный",
    1800,
    "2 дня",
    0,
    false
  ),
  Service( 
    2,
    "Клинический анализ крови с лейкоцитарной формулировкой",
    690,
    "1 день",
    0,
    false
  ),
  Service( 
    3,
    "Биохимический анализ крови, базовый",
    2440,
    "1 день",
    0,
    false
  ),
];

List<Service> serviceCart = [];