import 'package:flutter/material.dart';
import 'package:webapp/screens/about_page.dart';
import 'package:webapp/screens/wishlist_page.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Pavel Rodionov'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AboutPage.id);
            },
            icon: Icon(Icons.account_circle),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, WishlistPage.id);
              },
              icon: Icon(Icons.present_to_all))
        ],
      ),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Container(
              child: Image.asset(
                'images/myphoto.jpg',
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Pavel Rodionov donda donda donda',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
