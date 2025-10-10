import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:layout_flutter/models/item.dart';
import 'package:layout_flutter/widgets/grid_view_style_widget.dart';
import 'package:layout_flutter/widgets/list_view_style_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGridView = false;

  final List<Item> items = [
    Item(
      title: 'Wisata Gunung di Batu',
      location: 'Batu, Malang, Indonesia',
      description:
          'Gunung ini dikenal dengan panorama alam yang memukau, '
          'dikelilingi hutan lebat serta jalur pendakian yang menantang. '
          'Dari puncaknya, pendaki dapat menikmati pemandangan luas yang mencakup '
          'hamparan awan, perbukitan, hingga matahari terbit yang menawan. '
          'Selain keindahannya, gunung ini juga memiliki nilai sejarah dan budaya '
          'yang erat kaitannya dengan masyarakat sekitar. Dengan ketinggian yang '
          'cukup signifikan, destinasi ini menjadi favorit bagi pecinta alam, '
          'fotografer, hingga pendaki pemula yang ingin merasakan pengalaman mendaki '
          'pertama mereka.',
      star: 41,
      imgPath: 'assets/gunung_batu.jpeg',
    ),
    Item(
      title: 'Pantai Kuta',
      location: 'Bali, Indonesia',
      description:
          'Pantai Kuta adalah salah satu destinasi wisata paling populer '
          'di Bali, terkenal dengan pasir putihnya yang halus dan ombak yang cocok '
          'untuk berselancar. Pantai ini menawarkan pemandangan matahari terbenam '
          'yang spektakuler serta berbagai fasilitas wisata seperti restoran, bar, '
          'dan toko-toko suvenir. Selain itu, Pantai Kuta juga merupakan tempat yang '
          'ideal untuk bersantai dan menikmati suasana tropis Bali.',
      star: 58,
      imgPath: 'assets/pantai_kuta.jpeg',
    ),
    Item(
      title: 'Candi Borobudur',
      location: 'Magelang, Indonesia',
      description:
          'Candi Borobudur adalah salah satu situs warisan dunia UNESCO '
          'yang terletak di Magelang, Jawa Tengah. Candi ini merupakan candi Buddha '
          'terbesar di dunia dan terkenal dengan arsitektur megahnya serta relief-relief '
          'yang menceritakan ajaran Buddha. Pengunjung dapat menikmati pemandangan '
          'indah dari puncak candi serta belajar tentang sejarah dan budaya Indonesia '
          'melalui tur berpemandu.',
      star: 72,
      imgPath: 'assets/candi_borobudur.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    void callbackItemOnTap(Item item) {
      context.goNamed('detail', extra: item);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter layout - Destination"),
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [_modeToggleButton()],
      ),
      body: isGridView
          ? GridViewStyleWidget(
              items: items,
              callbackItemOnTap: (item) => callbackItemOnTap(item),
            )
          : ListViewStyleWidget(
              items: items,
              callbackItemOnTap: (item) => callbackItemOnTap(item),
            ),
    );
  }

  Widget _modeToggleButton() {
    return IconButton(
      icon: Icon(
        isGridView ? Icons.view_list_rounded : Icons.grid_view_rounded,
      ),
      onPressed: () {
        setState(() {
          isGridView = !isGridView;
        });
      },
    );
  }
}
