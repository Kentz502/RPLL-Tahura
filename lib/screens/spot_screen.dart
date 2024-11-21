import 'package:flutter/material.dart';

class SpotScreen extends StatelessWidget {
  const SpotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          const SizedBox(height: 32.0),
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
                          'Pada masa penjajahan Belanda, Belanda membangun berbagai infrastruktur di berbagai wilayah, termasuk di Kota Bandung. Salah satunya adalah pembangunan gua-gua buatan manusia. Gua Belanda dibangun pada tahun 1923 sebagai tempat penyimpanan dan perlindungan saat terjadi serangan udara atau serangan musuh.',
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
                  ],
                ),
              ),
            ),
          ),
        ],
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
        color: Colors.green.shade300,
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(
          color: Colors.green,
          width: 1.0,
        ), // Green color for cards
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(30.0),
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                    textAlign: TextAlign.justify,
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
