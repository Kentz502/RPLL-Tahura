import 'package:flutter/material.dart';

class SpotScreen extends StatelessWidget {
  const SpotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.green[300]!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      tooltip: "Back",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'SPOT',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 32.0),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SpotCard(
                              title: 'Goa Belanda',
                              image: 'assets/belanda.jpg',
                              description:
                                  'Pada masa penjajahan Belanda, Belanda membangun berbagai infrastruktur di berbagai wilayah, termasuk di Kota Bandung. Salah satunya adalah pembangunan gua-gua buatan manusia. Gua Belanda dibangun pada tahun 1923 sebagai tempat penyimpanan dan perlindungan saat terjadi serangan udara atau serangan CSRF.',
                            ),
                            const SizedBox(height: 16.0),
                            SpotCard(
                              title: 'Goa Jepang',
                              image: 'assets/jepang.jpg',
                              description:
                                  'Goa Jepang adalah salah satu tempat bersejarah yang dibangun oleh Jepang selama Perang Dunia II. Goa ini digunakan sebagai tempat pertahanan dan penyimpanan amunisi.',
                            ),
                            const SizedBox(height: 16.0),
                            SpotCard(
                              title: 'Penangkaran Rusa',
                              image: 'assets/rusa.jpg',
                              description:
                                  'Penangkaran Rusa adalah tempat yang didedikasikan untuk melindungi dan melestarikan spesies rusa yang terancam punah.',
                            ),
                            const SizedBox(height: 16.0),
                            SpotCard(
                              title: 'Curug Omas',
                              image: 'assets/omas.jpg',
                              description:
                                  'Curug Omas adalah air terjun yang indah yang terletak di kawasan hutan, tempat yang sempurna untuk berlibur dan menikmati alam.',
                            ),
                            const SizedBox(height: 16.0),
                            SpotCard(
                              title: 'Museum Ir H Juanda',
                              image: 'assets/museum.jpg',
                              description:
                                  'Museum Ir H Juanda adalah museum yang didedikasikan untuk mengenang jasa Ir. H. Juanda, seorang pahlawan nasional Indonesia.',
                            ),
                            const SizedBox(height: 16.0),
                            SpotCard(
                              title: 'Batu Batik',
                              image: 'assets/batik.jpg',
                              description:
                                  'Batu Batik adalah salah satu tempat yang terkenal dengan kerajinan batiknya yang unik dan berwarna-warni.',
                            ),
                            const SizedBox(height: 16.0),
                            SpotCard(
                              title: 'Curug Dago',
                              image: 'assets/Curugdago4.jpg',
                              description:
                                  'Curug Dago adalah air terjun yang terkenal di Bandung, menawarkan pemandangan yang menakjubkan dan suasana yang sejuk.',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpotCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const SpotCard({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12.0),
              ),
            child: Image.asset(
              image,
              width: 120,
              height: 150,
              fit: BoxFit.cover,
            ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
