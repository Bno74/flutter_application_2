// ignore_for_file: prefer_const_constructors, avoid_print, unused_local_variable, unused_import, depend_on_referenced_packagvar port 'package:flutter/material.dart';, depend_on_referenced_packages, unnecessary_null_comparison, non_constant_identifier_names, use_key_in_widget_constructors, library_private_types_in_public_api, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, equal_elements_in_set, empty_statements
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/models/catalog.dart';
import 'package:flutter_application_2/widgets/drawer.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 20;

  final String name = "samin";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("asset/file/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "WalMart".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
      "Recent products".text.xl2.make(),
    ]);
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return CatalogItem(catalog: catalog);
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(
          image: catalog.image,
        ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            catalog.name.text.xl.bold
                .color(MyTheme.darkBluishColor)
                .bold
                .make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
           10.heightBox,
          ButtonBar(
            buttonPadding: Vx.mH8,
            children: [
              "\$${catalog.price}".text.bold.xl.make(),
              ElevatedButton(onPressed: () {},
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor), shape: MaterialStateProperty.all(StadiumBorder(),) ) , child: "buy".text.make(),
              ),
            ],
            
          ),
    

          
              
      ],
    
          )
              
               
              
          
          
        )
      ],
    )).white.rounded.square(150).make().py16().w40(context);
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .roundedLg
        .color(MyTheme.creamColor)
        .make()
        .p16();
  }
}
