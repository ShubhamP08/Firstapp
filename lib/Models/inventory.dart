class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;

  Item({this.id, this.name, this.desc, this.price, this.color, this.img});
}

final products = [
  Item(
    id: "prd01",
    name: "Iphone 13 Pro Max",
    desc: "Apple Iphone 13th Generation",
    price: 129000,
    color: "#33505a",
    img: "https://m.media-amazon.com/images/I/61i8Vjb17SL._SL1500_.jpg",
  )
];
