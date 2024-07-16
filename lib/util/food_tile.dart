import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_bar/models/food.dart';
import 'package:sushi_bar/theme/colors.dart';

class FoodTile extends StatelessWidget {

  final Food food;

  const FoodTile({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFf5e9df),
        borderRadius: BorderRadius.circular(20),
        //add border color
        border: Border.all(color: Colors.grey.shade400),
      ),
      padding: EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25),

      child: Column(

        children: [
          //image
          Image.asset(
            food.imagePath,
            height: 120,
          ),
          SizedBox(height: 20),
          // name
          Text(
            food.name,
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,

            )
          ),


          // price + rating
          SizedBox(
            width: 160,
            child: Padding(
              padding: const EdgeInsets.only(left: 7, right: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // price
                  Text(
                    '\$${food.price}',
                  ),
                  SizedBox(height: 40,),
                  //icon + rating
                  Row(
                    children: [
                      Text(food.rating),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.yellow.shade700,
                      ),
                    ],
                  ),

                ],
              ),
            )
          )
        ],
      ),

    );
  }
}