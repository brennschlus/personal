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
          crossAxisCount: (MediaQuery.of(context).size.width < 800) ? 2 : 4,
          children: [
            WishlistCard('images/steam_deck.png', 'Steam Deck', 'от 399\$',
                'https://steamdeck.com'),
            WishlistCard('images/raspberry.jpg', 'Raspberry Pi 4 ', '7000руб.',
                'https://amperka.ru/product/raspberry-pi-4-model-b-4-gb'),
            WishlistCard('images/k2a2.png', 'Keychron K2 version 2', '7200руб',
                'https://keychron-russia.com/k2'),
            WishlistCard(
                'images/macbook.jpg',
                'Apple MacBook Pro 13 (M1, 2020)',
                '169990руб',
                'https://re-store.ru/catalog/Z11B0004U'),
            WishlistCard(
                'images/gamepad.png',
                'Xbox Series X Gamepad',
                '4400руб',
                'https://www.xbox.com/ru-RU/accessories/controllers/xbox-wireless-controller#'),
            WishlistCard('images/steam_deck.png', 'Steam Deck', '\$\$\$',
                'https://google.com'),
            WishlistCard('images/steam_deck.png', 'Steam Deck', '\$\$\$',
                'https://google.com'),
            WishlistCard('images/steam_deck.png', 'Steam Deck', '\$\$\$',
                'https://google.com'),
          ],
        ),
      ),
    );
  }
}
