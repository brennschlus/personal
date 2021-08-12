import 'package:flutter/material.dart';

class WishlistCard extends StatelessWidget {
  String assetImage;
  String name;
  String price;

  WishlistCard(
    this.assetImage,
    this.name,
    this.price,
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            assetImage,
            fit: BoxFit.scaleDown,
          ),
          Column(
            children: [Text('Name: $name'), Text('Price: $price')],
          )
        ],
      ),
    );
  }
}
