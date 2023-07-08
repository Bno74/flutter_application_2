// ignore_for_file: empty_constructor_bodies
import 'package:flutter/material.dart';

class CatalogModel {
  static   List<Item> items = [
    Item(
        id: 0,
        name: "iphone 12 pro max",
        desc: "iphone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://adminapi.applegadgetsbd.com/storage/media/large/1527-30875.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image});
  
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desec": desc,
        "price": price,
        "image": image,
      };
}

final products = [
  Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image:
          "https://adminapi.applegadgetsbd.com/storage/media/large/1527-30875.jpg")
];
