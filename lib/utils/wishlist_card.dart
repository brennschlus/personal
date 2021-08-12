import 'package:flutter/material.dart';
import 'dart:html' as html;

class WishlistCard extends StatelessWidget {
  final String assetImage;
  final String name;
  final String price;
  final String url;

  WishlistCard(this.assetImage, this.name, this.price, this.url);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.center,
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
                Text(
                  'Name: $name',
                  style: TextStyle(fontSize: 32),
                ),
                Text(
                  'Price: $price',
                  style: TextStyle(fontSize: 24),
                ),
                ElevatedButton(
                  onPressed: () {
                    html.window.open(url, name);
                  },
                  child: Text('Где купить?'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
