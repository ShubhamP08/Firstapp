class CatelogModel {
  static final products = [
    Item(
      id: 1,
      name: "iphone 13 Pro Max",
      desc: "Apple iphone 13th Generation",
      price: 999,
      color: "#33505a",
      img: "https://m.media-amazon.com/images/I/61i8Vjb17SL._SL1500_.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String img;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.img});
}
