import 'package:first/widgets/drawer.dart';
import 'package:first/widgets/items.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:first/Models/inventory.dart';
import 'package:flutter/services.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    LoadData();
  }

  LoadData() async {
    await Future.delayed(Duration(seconds: 3));
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogjson);
    var productsData = decodeData["products"];
    CatelogModel.products = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatelogModel.products != null && CatelogModel.products.isNotEmpty) ? ListView.builder(
          itemCount: CatelogModel.products.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatelogModel.products[index],
            );
          },
        ): Center(child:  CircularProgressIndicator(),)
      ),
      drawer: my_drawer(),
    );
  }
}
