import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_bar/theme/colors.dart';
import '../util/button.dart';
import '../models/food.dart';
import '../util/food_details_page.dart';
import '../util/food_tile.dart';
import '../pages/menu_page.dart';

class Shop extends ChangeNotifier {
  // food menu list
  final List<Food> _foodMenu = [
    // salmon nigiri
    Food(
      name: "Salmon Nigiri",
      price: "6.00",
      imagePath: "lib/images/salmon_nigiri.png",
      rating: "4.9",
    ),

    // tuna nigiri
    Food(
      name: "Tuna Nigiri",
      price: "5.75",
      imagePath: "lib/images/tuna_nigiri.png",
      rating: "4.6",
    ),

    // uramaki
    Food(
      name: "Uramaki",
      price: "4.50",
      imagePath: "lib/images/uramaki.png",
      rating: "4.7",
    ),

    // many salmon eggs
    Food(
      name: "Salmon Eggs",
      price: "6.50",
      imagePath: "lib/images/many_salmon_eggs.png",
      rating: "4.2",
    ),

    // egg sushi
    Food(
      name: "Egg Nigiri",
      price: "4.00",
      imagePath: "lib/images/egg_nigiri.png",
      rating: "4.5",
    ),

    // salmon sushi
    Food(
      name: "Salmon Sushi",
      price: "5.00",
      imagePath: "lib/images/salmon_sushi.png",
      rating: "4.8",
    ),

    // traditional sushi
    Food(
      name: "Traditional Sushi",
      price: "3.50",
      imagePath: "lib/images/traditional_sushi.png",
      rating: "4.3",
    ),

  ];

  // customer cart
  List<Food> _cart = [];

  // getter method
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for(int i = 0; i < quantity; i++){
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove item in cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }

}
