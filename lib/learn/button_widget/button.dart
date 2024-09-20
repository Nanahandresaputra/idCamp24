import 'package:flutter/material.dart';

class ButtonFlutter extends StatelessWidget {
  const ButtonFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Button Flutter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: const Text('ElevatedButton'),
              ),
              TextButton(onPressed: () {}, child: const Text('TextButton')),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit_document),
                tooltip: 'icon button',
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('OutlinedButton'),
              ),
              DropdownButton<String>(
                items: const <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                      value: 'Option 1', child: Text('Option 1')),
                  DropdownMenuItem<String>(
                      value: 'Option 2', child: Text('Option 2')),
                  DropdownMenuItem<String>(
                      value: 'Option 3', child: Text('Option 3')),
                ],
                onChanged: (value) {},
                value: 'Option 1',
              )
            ],
          ),
        ),
      ),
    );
  }
}
