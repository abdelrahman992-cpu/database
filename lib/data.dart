import 'package:flutter/material.dart';

class People {
  late final String name;
  late final String clas;
  late final String? img;
  People({
    required this.name,
    required this.clas,
    required this.img,
  });
}

List peopledetail = [
  People(name: 'darrage', clas: '1/1', img: 'soora.jpg'),
  People(name: 'olom', clas: '1/6', img: 'olom.jpg'),
  People(name: 'hasb', clas: '1/8', img: 'hasb.jpg'),
  People(name: 'tulip', clas: '1/5', img: 'Tulips.jpg'),
];
