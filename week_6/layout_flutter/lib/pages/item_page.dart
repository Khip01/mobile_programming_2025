import 'package:flutter/material.dart';
import 'package:layout_flutter/models/item.dart';

class ItemPage extends StatelessWidget {
  ItemPage({super.key});

  Widget titleSection(Item item) {
    return Container(
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
                  child: Text(
                    // 'Wisata Gunung di Batu',
                    item.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  // 'Batu, Malang, Indonesia',
                  item.location,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(Icons.star, color: Colors.amber),
          SizedBox(width: 4),
          // const Text('41'),
          Text("${item.star}"),
        ],
      ),
    );
  }

  Widget textSection(String description) {
    return Container(
      padding: const EdgeInsets.all(32),
      // child: const Text(
      //   'Gunung ini dikenal dengan panorama alam yang memukau, dikelilingi hutan '
      //       'lebat serta jalur pendakian yang menantang. Dari puncaknya, pendaki dapat '
      //       'menikmati pemandangan luas yang mencakup hamparan awan, perbukitan, hingga '
      //       'matahari terbit yang menawan. Selain keindahannya, gunung ini juga memiliki '
      //       'nilai sejarah dan budaya yang erat kaitannya dengan masyarakat sekitar. '
      //       'Dengan ketinggian yang cukup signifikan, destinasi ini menjadi favorit '
      //       'bagi pecinta alam, fotografer, hingga pendaki pemula yang ingin merasakan '
      //       'pengalaman mendaki pertama mereka.',
      child: Text(description, softWrap: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)?.settings.arguments as Item;

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // title: const Text('Flutter layout demo'),
        title: Text(itemArgs.title),
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Hero(
            tag: itemArgs.imgPath,
            child: Image.asset(
              // 'assets/mountain.jpeg',
              itemArgs.imgPath,
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
          ),
          titleSection(itemArgs),
          buttonSection,
          textSection(itemArgs.description),
        ],
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
