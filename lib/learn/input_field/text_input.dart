import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextInputField extends StatefulWidget {
  const TextInputField({Key? key}) : super(key: key);

  @override
  _TextInputFieldState createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  final TextEditingController _controller = TextEditingController();
  bool _isValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'TextInput Text Field',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: SizedBox(
            width: 200,
            child: ListView(
              children: <Widget>[
                TextField(
                  controller: _controller,
                  onChanged: (value) {},
                  decoration: const InputDecoration(labelText: 'Text Field'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _controller,
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                      label: Text(
                        'Text Field',
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                Row(
                  children: <Widget>[
                    Switch(
                        value: _isValue,
                        onChanged: (value) {
                          setState(() {
                            _isValue = value;
                          });
                        }),
                    Switch(
                        value: _isValue,
                        activeColor: Colors.green,
                        inactiveThumbColor: Colors.red,
                        inactiveTrackColor: Colors.red[200],
                        trackOutlineWidth: WidgetStateProperty.all(0),
                        onChanged: (value) {
                          setState(() {
                            _isValue = value;
                          });
                        }),
                    Switch(
                        value: _isValue,
                        activeColor: Colors.amber,
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.black54,
                        thumbIcon: WidgetStateProperty.resolveWith(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return const Icon(
                              Icons.sunny,
                              color: Colors.white,
                            );
                          } else {
                            return const Icon(Icons.nightlight);
                          }
                        }),
                        onChanged: (value) {
                          setState(() {
                            _isValue = value;
                          });
                        }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
