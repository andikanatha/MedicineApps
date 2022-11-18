import 'package:flutter/material.dart';

class DataProduct {
  int id;
  String name;
  String producent;
  String imageUrl;
  String price;
  String stocks;
  String unit;
  String location;
  String category;

  DataProduct({
    this.id,
    this.name,
    this.producent,
    this.imageUrl,
    this.price,
    this.stocks,
    this.unit,
    this.location,
    this.category,
  });
}

class Dataary {
  final int id;
  final String name;
  final String producent;
  final String imageUrl;
  final String price;
  final String stocks;
  final String unit;
  final String location;
  final String category;

  Dataary({
    this.id,
    this.name,
    this.producent,
    this.imageUrl,
    this.price,
    this.stocks,
    this.unit,
    this.location,
    this.category,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'producent': producent,
      'imageUrl': imageUrl,
      'price': price,
      'stocks': stocks,
      'unit': unit,
      'location': location,
      'category': category,
    };
  }

  Map<String, dynamic> update() {
    return {
      'id': id,
      'name': name,
      'producent': producent,
      'imageUrl': imageUrl,
      'price': price,
      'stocks': stocks,
      'unit': unit,
      'location': location,
      'category': category,
    };
  }
}

final List<Dataary> dataary = [
  Dataary(
      id: 1,
      name: 'Paracetamol',
      producent: 'PT Kalbe Farma',
      imageUrl: 'assets/top1.png',
      price: '5000',
      stocks: '970',
      unit: 'Strips',
      location: '',
      category: ''),
  Dataary(
      id: 2,
      name: 'Bodrexin',
      producent: 'PT Biofarma Firma',
      imageUrl: 'assets/top2.png',
      price: '7000',
      stocks: '9000',
      unit: 'Strips',
      location: '',
      category: ''),
  Dataary(
      id: 3,
      name: 'FG Throcest',
      producent: 'Dexa Medica',
      imageUrl: 'assets/top3.png',
      price: '8000',
      stocks: '9720',
      unit: 'Strips',
      location: '',
      category: ''),
];

class Dataprodk {
  final int id;
  final String name;
  final String producent;
  final String imageUrl;
  final String price;
  final String stocks;
  final String unit;
  final String location;
  final String category;

  Dataprodk({
    this.id,
    this.name,
    this.producent,
    this.imageUrl,
    this.price,
    this.stocks,
    this.unit,
    this.location,
    this.category,
  });

  Map<String, dynamic> toMapproduk() {
    return {
      'id': id,
      'name': name,
      'producent': producent,
      'imageUrl': imageUrl,
      'price': price,
      'stocks': stocks,
      'unit': unit,
      'location': location,
      'category': category,
    };
  }

  Map<String, dynamic> updateproduk() {
    return {
      'id': id,
      'name': name,
      'producent': producent,
      'imageUrl': imageUrl,
      'price': price,
      'stocks': stocks,
      'unit': unit,
      'location': location,
      'category': category,
    };
  }
}

final List<Dataprodk> dataprodk = [
  Dataprodk(
      id: 9,
      name: 'Paracetamol',
      producent: 'PT Kalbe Farma',
      imageUrl: 'assets/prod1.png',
      price: '6.500',
      stocks: '71',
      unit: 'Strips',
      location: '',
      category: ''),
  Dataprodk(
      id: 10,
      name: 'Acarbose',
      producent: 'PT Biofarma Firma',
      imageUrl: 'assets/prod2.png',
      price: '3.500',
      stocks: '102',
      unit: 'Strips',
      location: '',
      category: ''),
  Dataprodk(
      id: 11,
      name: 'Amiodrone',
      producent: 'Dexa Medica',
      imageUrl: 'assets/prod3.png',
      price: '5.000',
      stocks: '381',
      unit: 'Strips',
      location: '',
      category: ''),
  Dataprodk(
      id: 4,
      name: 'Allylestrenol',
      producent: 'PT Kalbe Farma',
      imageUrl: 'assets/prod4.png',
      price: '5.000',
      stocks: '143',
      unit: 'Strips',
      location: '',
      category: ''),
  Dataprodk(
      id: 5,
      imageUrl: 'assets/prod5.png',
      name: 'Amineptine',
      price: '7.000',
      stocks: '347',
      unit: 'Strips',
      location: '',
      category: ''),
  Dataprodk(
      id: 6,
      imageUrl: 'assets/prod6.png',
      name: 'Amoxapine',
      price: '4.500',
      stocks: '222',
      unit: 'Strips',
      location: '',
      category: ''),
  Dataprodk(
      id: 7,
      imageUrl: 'assets/prod7.png',
      name: 'Ampicillin',
      price: '6.500',
      stocks: '711',
      unit: 'Strips',
      location: '',
      category: ''),
  Dataprodk(
      id: 8,
      imageUrl: 'assets/prod8.png',
      name: 'Amoxillin',
      price: '4.500',
      stocks: '102',
      unit: 'Strips',
      location: '',
      category: ''),
];
