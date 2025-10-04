import 'package:flutter/material.dart';
import 'package:layout_flutter/models/item.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter layout - Destination"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [_modeToggleButton()],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return _buildItemCard(item);
        },
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

  Widget _buildItemCard(Item item) {
    void onItemTapAction() {
      Navigator.pushNamed(context, '/item', arguments: item);
    }

    return Container(
      height: 160,
      margin: EdgeInsets.only(bottom: 12),
      width: double.maxFinite,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(24),
        ),
        elevation: 1,
        margin: EdgeInsets.zero,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onItemTapAction,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    // image
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: constraints.maxHeight,
                      width: constraints.maxHeight - 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Hero(
                        tag: item.imgPath,
                        child: Image.asset(item.imgPath, fit: BoxFit.cover),
                      ),
                    ),
                    // body
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        height: constraints.maxHeight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.title,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_rounded,
                                  size: 16,
                                  color: Colors.blue[500],
                                ),
                                SizedBox(width: 4),
                                Text(
                                  item.location,
                                  style: TextStyle(color: Colors.blue[500]),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Text(
                              item.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            SizedBox(
                              height: 24,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Colors.red[500],
                                    size: 20,
                                  ),
                                  SizedBox(width: 4),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Text('${item.star}'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
