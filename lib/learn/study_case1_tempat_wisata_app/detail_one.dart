import 'package:flutter/material.dart';

class DetailOne extends StatelessWidget {
  const DetailOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: Colors.grey.withOpacity(0.6),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.network(
                  'https://asset.kompas.com/crops/yejbAG5BVJAudCyNgIM_mZCw_xU=/0x0:1003x669/750x500/data/photo/2021/09/26/615070d94add1.jpg',
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Kawah Putih',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.date_range_outlined),
                        Text('Open Everyday')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time_rounded),
                        Text('09.00 - 18.00 wib')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        Text('Rp 5.000')
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: const Text(
                      textAlign: TextAlign.center,
                      'Destinasi wisata alam kawah vulkanik yang berwarna putih kehijauan berpadu dengan batu kapur putih yang mengelilingi danau kawah. Terbentuk dari kaldera letusan Gunung Patuha yang terletak di kawasan wisata Ciwidey, Kabupaten Bandung yang berhawa sejuk dan kental dengan suasana pedesaan Priangan.'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: 10,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://awsimages.detik.net.id/community/media/visual/2022/05/03/kawasan-wisata-kawah-putih-1_169.jpeg?w=600&q=90',
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://panghealingan.com/wp-content/uploads/2023/03/314557804_5384495078345202_4534642973512243876_n-819x1024.jpg',
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://cdn.antarafoto.com/cache/805x1200/2009/09/23/kawah-putih-1mvb-dom.jpg',
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://www.askara.co/assets/images/news/2024/03/20240320081407_normal.jpg',
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://static.republika.co.id/uploads/images/inpicture_slide/wisatawan-mancangegara-berswafoto-di-wisata-alam-kawah-putih-ciwidey-_190213163446-272.jpg',
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://jabarekspres.com/wp-content/uploads/2023/12/WhatsApp-Image-2023-12-31-at-16.59.44-scaled.webp',
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
