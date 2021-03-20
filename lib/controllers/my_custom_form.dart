import 'package:flutter/material.dart';

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (textOne) {
              print("First text field: $textOne");
            },
          ),
          TextField(
            onChanged: (textTwo) {
              print("First text field: $textTwo");
            },
          ),
          TextButton(
            onPressed: () {
              print('object');
            },
            child: new Text(
              'Click and Add ToDo List',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
