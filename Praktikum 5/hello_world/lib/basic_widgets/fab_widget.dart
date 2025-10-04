import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  final VoidCallback onPressed; // <- properti untuk menyimpan fungsi callback

  const FabWidget({
    super.key,
    required this.onPressed, // <- wajib diisi ketika dipanggil
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Colors.pink,
          child: const Icon(Icons.thumb_up),
        ),
      ),
    );
  }
}
