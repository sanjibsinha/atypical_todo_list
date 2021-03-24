import 'package:flutter/material.dart';
import '/controllers/my_custom_form.dart';
import '/models/to_do.dart';
import '../controllers/list_of_to_do_page.dart';

class FirstPageParent extends StatefulWidget {
  const FirstPageParent({Key key}) : super(key: key);

  @override
  _FirstPageParentState createState() => _FirstPageParentState();
}

class _FirstPageParentState extends State<FirstPageParent> {
  final List<ToDo> _todoList = [
    ToDo(
      id: 1,
      title: 'Market',
      task: 'Buying Fruits',
      date: DateTime.now(),
    ),
    ToDo(
      id: 2,
      title: 'Book',
      task: 'Writing State in Flutter',
      date: DateTime.now(),
    ),
  ];
  void _addtaskTotoDo(String id, String title, String task) {
    final _newTasks = ToDo(
      id: int.parse(id),
      title: title,
      task: task,
      date: DateTime.now(),
    );
    setState(() {
      _todoList.add(_newTasks);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          MyCustomForm(_addtaskTotoDo),
          ListOfToDoPage(
            todoList: _todoList,
          ),
        ],
      ),
    );
  }
}
