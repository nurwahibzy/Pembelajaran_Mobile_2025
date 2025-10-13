import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/footer.dart';
import '../widgets/item_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imagePath: 'images/sugar.jpg',
      stok: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imagePath: 'images/salt.jpg',
      stok: 8,
      rating: 4.2,
    ),
    Item(
      name: 'Coffee',
      price: 12000,
      imagePath: 'images/coffee.jpeg',
      stok: 5,
      rating: 4.8,
    ),
    Item(
      name: 'Tea',
      price: 8000,
      imagePath: 'images/tea.jpeg',
      stok: 12,
      rating: 4.3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Dua kolom
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return ItemCard(item: item);
          },
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
