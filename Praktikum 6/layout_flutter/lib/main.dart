import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Danau Ranu Kumbolo di Gunung Semeru ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Lumajang, Jawa Timur',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Ranu Kumbolo adalah sebuah danau kawah yang terletak di dalam Taman Nasional Bromo Tengger Semeru, Jawa Timur, Indonesia. Danau ini merupakan bagian dari rute termudah pendakian yang berawal dari Ranu Pani menuju puncak Gunung Semeru. Wikipedia\n\n'
        'Ketinggian permukaan: 2.389 m\n'
        'Luas: 24 ha\n'
        'Aliran masuk utama: Hanya presipitasi\n'
        'Area permukaan: 15 ha (37 ekar)\n'
        'Jenis perairan: Vulkanik.\n'
        'Letak: Taman Nasional Bromo Tengger Semeru, Lumajang, Jawa Timur, Indonesia',
        softWrap: true,
      ),
    );

    Widget buildCategoryCard(IconData icon, String label, Color color) {
      return Container(
        margin: const EdgeInsets.only(right: 12),
        width: 140,
        height: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 32),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    Widget horizontalList = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          buildCategoryCard(
            Icons.shopping_bag,
            'Pesan Tiket',
            Colors.orangeAccent,
          ),
          buildCategoryCard(
            Icons.arrow_circle_up_outlined,
            'Petunjuk Arah',
            Colors.blueAccent,
          ),
          buildCategoryCard(Icons.restaurant, 'Kuliner', Colors.green),
          buildCategoryCard(Icons.event, 'Event', Colors.purpleAccent),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nurwahib Zakki Yahya - 2341720154',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            horizontalList,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
