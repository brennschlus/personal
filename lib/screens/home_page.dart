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
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 260,
            child: Container(
              child: Image.asset(
                'images/photo.png',
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Pavel Rodionov',
              style: TextStyle(
                fontSize: 46,
                color: Colors.black,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Wishlist',
                      style: TextStyle(
                          fontSize: 15,
                          decoration: isHovering
                              ? TextDecoration.underline
                              : TextDecoration.none),
                    ),
                  ),
                  onHover: (hovering) {
                    setState(() => isHovering = hovering);
                  },
                  onTap: () {
                    Navigator.pushNamed(context, WishlistPage.id);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
