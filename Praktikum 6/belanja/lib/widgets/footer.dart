import 'package:flutter/material.dart';
// import 'models/item.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});
  final String nama = "Nurwahib Zakki Yahya";
  final String nim = "2341720154";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.blue,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(nama, style: const TextStyle(color: Colors.white, fontSize: 16)),
          Text(nim, style: const TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}
