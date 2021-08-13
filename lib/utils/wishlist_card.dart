import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import '../constants.dart';

class WishlistCard extends StatelessWidget {
  final String assetImage;
  final String name;
  final String price;
  final String url;

  WishlistCard(this.assetImage, this.name, this.price, this.url);

  @override
  Widget build(BuildContext context) {
    // Variable to get screen size of content
    // var screenSize = MediaQuery.of(context).size;
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            assetImage,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Text(
                    '$name',
                    style: TextStyle(
                      fontSize: (kWishlistCardNameFont),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Text(
                    '$price',
                    style: TextStyle(
                      fontSize: (kWishlistCardPriceFont),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    html.window.open(url, name);
                  },
                  child: Text(
                    'Где купить?',
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
