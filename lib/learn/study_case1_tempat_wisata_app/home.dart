import 'package:dicoding_flutter/learn/study_case1_tempat_wisata_app/detail_one.dart';
import 'package:flutter/material.dart';

class HomeCaseOne extends StatelessWidget {
  const HomeCaseOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeWidget());
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Wisata Bandung',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DetailOne();
              }));
            },
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.all(12),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Image.network(
                      'https://asset.kompas.com/crops/yejbAG5BVJAudCyNgIM_mZCw_xU=/0x0:1003x669/750x500/data/photo/2021/09/26/615070d94add1.jpg',
                      height: 80,
                      width: 100,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Kawah Putih',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Kabupaten Bandung',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
