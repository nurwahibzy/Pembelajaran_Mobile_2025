import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/detail_item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Detail(item: item),
    );
  }
}

