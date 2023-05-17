import 'dart:convert';

import 'package:grocery_app/model/tag.dart';
import 'package:hive/hive.dart';

part 'product.g.dart';

List<Product> popularProductListFromJson(String val) => List<Product>.from(
    json.decode(val)['data'].map((val) => Product.popularProductFromJson(val)));

List<Product> productListFromJson(String val) => List<Product>.from(
    json.decode(val)['data'].map((val) => Product.productFromJson(val)));

@HiveType(typeId: 3)
class Product {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final List<String> images;
  @HiveField(4)
  final Tag tags;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.images,
      required this.tags});

  factory Product.popularProductFromJson(Map<String, dynamic> data) => Product(
      id: data['id'],
      name: data['attributes']['product']['data']['attributes']['name'],
      description: data['attributes']['product']['data']['attributes']
          ['description'],
      images: List<String>.from(data['attributes']['product']['data']
              ['attributes']['images']['data']
          .map((image) => image['attributes']['url'])),
      tags: Tag(id: 0, title: "", price: 0.0));

  factory Product.productFromJson(Map<String, dynamic> data) => Product(
      id: data['id'],
      name: data['attributes']['name'],
      description: data['attributes']['description'],
      images: List<String>.from(data['attributes']['images']['data']
          .map((image) => image['attributes']['url'])),
      tags: Tag.fromJson(data['attributes']['tag']['data']));
}
