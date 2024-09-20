import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text(
            'Learn 1',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(
          child: Text('hello world'),
        ),
      ),
    );
  }
}
