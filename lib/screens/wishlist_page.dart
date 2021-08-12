import 'package:flutter/material.dart';
import '../utils/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  static String id = 'wishlist_page';
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            WishlistCard('images/steam_deck.png', 'Steam Deck', 'Дохуя'),
            WishlistCard('images/steam_deck.png', 'Steam Deck', 'Дохуя'),
            WishlistCard('images/steam_deck.png', 'Steam Deck', 'Дохуя'),
            WishlistCard('images/steam_deck.png', 'Steam Deck', 'Дохуя'),
            WishlistCard('images/steam_deck.png', 'Steam Deck', 'Дохуя'),
            WishlistCard('images/steam_deck.png', 'Steam Deck', 'Дохуя'),
            WishlistCard('images/steam_deck.png', 'Steam Deck', 'Дохуя'),
            WishlistCard('images/steam_deck.png', 'Steam Deck', 'Дохуя'),
          ],
        ),
      ),
    );
  }
}
