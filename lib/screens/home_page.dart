import 'package:first/widgets/drawer.dart';
import 'package:first/widgets/items.dart';
import 'package:flutter/material.dart';
import 'package:first/Models/inventory.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(20, (index) => CatelogModel.products[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
      ),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummylist[index],
          );
        },
      ),
      drawer: my_drawer(),
    );
  }
}
