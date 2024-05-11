class Item {
  String imgPath;
  double price;
  String location;
  String name;

  Item(
      {required this.imgPath,
      required this.price,
      required this.name,
      this.location = "No location"});
}

List<Item> items = [
  Item(
      name: "product 1",
      imgPath: "assets/img/p1.jpg",
      price: 12.99,
      location: "alibaba"),
  Item(name: "product 2", imgPath: "assets/img/p2.jpg", price: 13.99),
  Item(
      name: "product 3",
      imgPath: "assets/img/p3.jpg",
      price: 14.99,
      location: "jumia"),
  Item(name: "product 4", imgPath: "assets/img/p4.jpg", price: 15.99),
  Item(
      name: "product 5",
      imgPath: "assets/img/p5.jpg",
      price: 16.99,
      location: "amazon"),
  Item(name: "product 6", imgPath: "assets/img/p6.jpg", price: 17.99),
  Item(
      name: "product 7",
      imgPath: "assets/img/p7.jpg",
      price: 18.99,
      location: "zara"),
  Item(name: "product 8", imgPath: "assets/img/p8.jpg", price: 19.99),
  Item(name: "product 9", imgPath: "assets/img/p9.jpg", price: 20.99),
];
