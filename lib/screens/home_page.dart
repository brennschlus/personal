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
      appBar: AppBar(
        title: Text('Pavel Rodionov'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              foregroundImage: AssetImage('images/avatar.jpg'),
              radius: 200,
            ),
            Text(
              'Pavel Rodionov',
              style: TextStyle(fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
          ],
        ),
      ),
    );
  }
}
