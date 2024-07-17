import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi_bar/theme/colors.dart';
import 'package:sushi_bar/util/button.dart';
import '../models/food.dart';
import '../models/shop.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  /// remove from cart function
  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();

    // Remove
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: Text(
            "My Sushi Cart",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )
          ),
          centerTitle: true,
          backgroundColor: primaryColor,

        ),

        body: Column(
          children: [
            // Cart Item
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index){
                  // get food from cart
                  final Food food = value.cart[index];
              
                  // get food name
                  final String foodName = food.name;
              
                  // get food price
                  final String foodPrice = food.price;
              
                  // return list title
                  return Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                    ),
                    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade900,
                        )
                      ),
                      subtitle: Text(foodPrice),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => removeFromCart(food, context),
                      )
                    ),
                  );
              
                },
              ),
            ),

            // Pay Button
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 18, right: 18, bottom: 5),
              child: MyButton(
                  text: "Order Now",
                  onTap: () {
                    // pay now
                  },
              ),
            )
          ],
        ),
      ),
    );
  }
}
