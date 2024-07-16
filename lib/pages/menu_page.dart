import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_bar/theme/colors.dart';
import '../util/button.dart';
import '../models/food.dart';
import '../util/food_details_page.dart';
import '../util/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  // food menu list

  List foodMenu = [
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

  void navigateFoodDetails(int index) {
    // navigate to food details page
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FoodDetailsPage(
              food: foodMenu[index],
            ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'DRIFSHI',
          style: GoogleFonts.kanit(
            color: Colors.grey.shade900,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey.shade100,
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.menu,
                size: 48,
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("INTRO PAGE"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/intro_page');
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTINGS"),
              onTap: () {
                Navigator.pop(context);

              },
            ),

          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.only(left: 0, right: 10, top: 20, bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    // promo message
                    Text(
                      "Get 50% Discount!",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5,),

                    // redeem button
                    MyButton(
                      text: "Redeem Now",
                      onTap: () {

                      },
                    )
                  ],
                ),

                // image
                Image.asset(
                  "lib/images/many_sushi.png",
                  height: 100,
                ),

              ],

            ),
          ),

          // search bar
          Padding (
            padding: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Detect Sushi...",
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                ),
              )
            ),
          ),

          // menu text
          Padding(
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800,
              ),

            ),
            padding: const EdgeInsets.all(25)
          ),

          //menu horizontal list
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
                onTap: () {
                  navigateFoodDetails(index);
                },
              ),
            ),
          ),

          const SizedBox(height: 25),

          // popular items
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(right: 25, left: 25, bottom: 25),
            padding: EdgeInsets.only(left: 10, right: 20, top: 20, bottom: 20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // image
                Row(
                  children: [
                    Image.asset("lib/images/salmon_eggs_sushi.png",
                      height: 60,
                    ),

                    const SizedBox(width: 10),

                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Salmon Eggs Sushi",
                          style: GoogleFonts.montserrat(
                            fontSize: 15  ,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),

                        // price
                        Text(
                          '\$6.50',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),

                // heart
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {
                    // make the icon filled

                  },
                )

              ],
            )
          )

        ],
      ),
    );
  }
}
