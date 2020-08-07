class Categories {
  String imageUrl;
  String name;

  Categories({this.imageUrl, this.name});
}

List<Categories> categorylist = [
  Categories(imageUrl: "assets/images/Grocery.png", name: "Groceries"),
  Categories(imageUrl: "assets/images/Veggies.png", name: "Veggies"),
  Categories(imageUrl: "assets/images/Dairy.png", name: "Dairy"),
  Categories(imageUrl: "assets/images/Medicines.png", name: "Medicines"),
  Categories(imageUrl: "assets/images/Stationary.png", name: "Stationary"),
];
