import 'package:flutter/material.dart';
import 'package:webapp/screens/about_page.dart';
import 'package:webapp/screens/wishlist_page.dart';
import 'screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal website',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        WishlistPage.id: (context) => WishlistPage(),
        AboutPage.id: (context) => AboutPage()
      },
    );
  }
}
