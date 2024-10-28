class MenuItem {
  String name;
  String category;
  double rating;
  double price;
  String image;

  MenuItem(
      {required this.name,
      required this.category,
      required this.rating,
      required this.price,
      required this.image});
}

final List<MenuItem> menuItemList = [
  MenuItem(name: "Caffe Mocha", category: "Deep Foam", rating: 4.8, price: 4.53, image: "assets/data/images/menu1.png"),
  MenuItem(name: "Flat White", category: "Espresso", rating: 4.8, price: 3.53, image: "assets/data/images/menu2.png"),
  MenuItem(name: "Caramel Machiato", category: "Machiato", rating: 4.3, price: 4.55, image: "assets/data/images/menu3.png"),
  MenuItem(name: "Simple White", category: "Espresso", rating: 4.5, price: 3.44, image: "assets/data/images/menu4.png"),
];
