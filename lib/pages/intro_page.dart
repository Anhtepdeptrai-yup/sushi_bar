import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_bar/util/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:25),
            // bar name
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
 
            // icon
            Padding(
              padding: const EdgeInsets.all(45  ),
              child: Image.asset("lib/images/salmon_eggs_sushi.png"),
            ),

            // title
            Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 2, left: 12,),
              child: Text(
                "THE TASTE OF JAPANESE FOOD",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),

            // subtitle
            Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 0, left: 12),
              child: Text("Feel the taste of the most famous Japanese "
                "traditional food from anywhere, and anytime.",
                style: TextStyle(
                  color: Colors.grey.shade200,
                  height: 2,
                ),
              ),
            ),
            SizedBox(height: 25),

            // get started button
            MyButton(
              text: "Let's get Started!",
              onTap: (){
                Navigator.pushNamed(context, '/menu_page');
              },
            ),

          ],
        ),
      ),
    );
  }
}
