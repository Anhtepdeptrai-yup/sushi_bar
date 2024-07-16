import 'package:flutter/material.dart';
import 'package:sushi_bar/pages/menu_page.dart';
import 'pages/intro_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/menu_page': (context) => const MenuPage(),
      },
    );
  }
}
