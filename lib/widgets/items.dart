import 'package:first/Models/inventory.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      elevation: 1.5,
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\u{20B9} ${item.price}",
        textScaleFactor: 1.5,
        style: TextStyle(
          color: Colors.cyan,
          fontWeight: FontWeight.bold
        ),
        ),
        
      ),
    );
  }
}
