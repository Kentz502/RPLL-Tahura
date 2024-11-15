import 'package:flutter/material.dart';

class FaunaScreen extends StatelessWidget {
  const FaunaScreen({Key? key}) : super(key: key);

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
                'FAUNA',
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
                FaunaCard(
                  title: 'Rusa Sambar (Cervus unicolor)',
                  image: 'assets/sambar.jpg',
                  description: 'Rusa sambar atau sambar india (disebut juga rusa sambur, sambhur, Tamil: Kadaththi man), adalah jenis rusa besar yang umum berhabitat di Asia. Spesies yang umum memiliki ciri khas tubuh yang besar dengan warna bulu kecokelatan. Sambar dapat tumbuh setinggi 102 cm–160 cm sampai bahu dengan berat sekitar 546 kg.',
                ),
                const SizedBox(height: 16.0),
                FaunaCard(
                  title: 'Kera Ekor Panjang (Macaca fascicularis)',
                  image: 'assets/monyet.jpg',
                  description: 'Monyet pemakan kepiting (Macaca fascicularis), yang juga dikenal sebagai monyet ekor panjang atau monyet cynomolgus, adalah primata cercopithecine yang berasal dari Asia Tenggara . Sebagai spesies sinantropik, monyet pemakan kepiting tumbuh subur di dekat pemukiman manusia dan di hutan sekunder.',
                ),
                const SizedBox(height: 16.0),
                FaunaCard(
                  title: 'Burung Cucak Kuning (Rubigula dispar)',
                  image: 'assets/burung.jpg',
                  description: 'Burung cucak berukuran sedang yang mencolok, endemik Jawa, Sumatera dan Bali, dimana burung ini menghuni habitat berpohon terbuka. Kombinasi kepala hitam legam, tubuh kuning-emas, serta tenggorokan merah-darah membuatnya mudah dikenali.',
                ),
                const SizedBox(height: 16.0),
                FaunaCard(
                  title: 'Ayam Hutan',
                  image: 'assets/ayam.jpg',
                  description: 'Ayam hutan adalah nama umum bagi jenis-jenis ayam liar yang hidup di hutan. Ayam hutan merupakan leluhur dari ayam kampung. Ayam-ayam ini dari segi bentuk tubuh dan perilakunya sangat serupa dengan ayam-ayam peliharaan, karena memang merupakan leluhur dari ayam peliharaan. ',
                ),
                const SizedBox(height: 16.0),
                FaunaCard(
                  title: 'Burung Kepodang',
                  image: 'assets/kepodang.jpg',
                  description: 'Kepodang adalah burung berkicau (Passeriformes) yang mempunyai bulu yang indah dan juga terkenal sebagai burung pesolek yang selalu tampil cantik, rapi, dan bersih termasuk dalam membuat sarang. Kepodang merupakan salah satu jenis burung yang sulit dibedakan antara jantan dan betinanya berdasarkan bentuk fisiknya',
                ),
                const SizedBox(height: 16.0),
                FaunaCard(
                  title: 'Burung Kutilang',
                  image: 'assets/kutilang.jpg',
                  description: 'Ketilang, Kutilang, burung nilam, atau cucak kutilang adalah sejenis burung pengicau dari suku Pycnonotidae. Dalam bahasa Inggris burung ini disebut Sooty-headed Bulbul, sementara nama ilmiahnya adalah Pycnonotus aurigaster; mengacu pada bulu-bulu di sekitar pantatnya yang berwarna jingga',
                ),
              ],
            ),
          ),
        ),
      ),
          ],
        ),
      ),
    );
  }
}

class FaunaCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const FaunaCard({Key? key, 
  required this.title, 
  required this.image, 
  required this.description,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green.shade300,
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