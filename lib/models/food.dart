import 'package:flutter/material.dart';

class Food {
  final String name;
  final String price;
  final String imagePath;
  final String rating;

  Food({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
  });

  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;

}