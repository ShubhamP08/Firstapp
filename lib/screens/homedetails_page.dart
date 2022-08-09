import 'package:first/Models/inventory.dart';
import 'package:first/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Mytheme.creamColor,
      bottomNavigationBar:Container(
        color: Colors.white,
        child: ButtonBar(
          
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\u{20B9} ${catalog.price}".text.bold.xl3.red800.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: "Buy".text.xl.make()).wh(100,50)
                ],
              ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [Hero
          (
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image),
          ).h32(context),
          Expanded(child: VxArc(
            height: 30.0,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(
              color: Colors.white,
              width: context.screenWidth,
              child: Column(
                children: [
                   catalog.name.text.xl4.color(Mytheme.darkBluish).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).lg.make(),
            10.heightBox,
                ],

              ).py64(),
            ),
          ))
          ],
            
        ),
      ),
    );
  }
}
