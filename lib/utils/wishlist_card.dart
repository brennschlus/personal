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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      '$name',
                      style: TextStyle(
                        fontSize: (kWishlistCardNameFont),
                      ),
                    ),
                    Text(
                      '$price',
                      style: TextStyle(
                        fontSize: (kWishlistCardPriceFont),
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
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
