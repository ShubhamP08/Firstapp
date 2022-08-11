
import 'package:first/Utils/routes.dart';
import 'package:first/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:first/Models/inventory.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Home_widgets/catalog_header.dart';
import 'Home_widgets/catalog_list.dart';

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
    await Future.delayed(Duration(seconds: 2));
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
        backgroundColor: Mytheme.creamColor,
        floatingActionButton: FloatingActionButton(onPressed: ()=> Navigator.pushNamed(context, Myroutes.CartRoute),
        backgroundColor: Colors.cyan,
        child: Icon(CupertinoIcons.cart),),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatelogModel.products != null &&
                    CatelogModel.products.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
                  
              ],
            ),
          ),
        ));
  }
}

