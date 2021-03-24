import 'package:flutter/material.dart';

// Define a custom Form widget.
class MyCustomForm extends StatelessWidget {
  final idController = TextEditingController();
  final titleController = TextEditingController();
  final taskController = TextEditingController();
  final Function addData;
  MyCustomForm(this.addData);
  void submitData() {
    addData(
      idController.text,
      titleController.text,
      taskController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: 'ID in Number'),
            controller: idController,
            keyboardType: TextInputType.number,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Titile of Task to do'),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Detail of Task to do'),
            controller: taskController,
            onSubmitted: (_) => submitData(),
          ),
          TextButton(
            onPressed: () {
              addData(
                idController.text,
                titleController.text,
                taskController.text,
              );
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
