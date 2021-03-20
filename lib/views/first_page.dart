import 'package:flutter/material.dart';
import '/controllers/my_custom_form.dart';
import '/models/to_do.dart';

class FirstPageParent extends StatelessWidget {
  const FirstPageParent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          MyCustomForm(),
          FirstPage(),
        ],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ToDo> todoList = [
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
      ToDo(
        id: 2,
        title: 'Book',
        task: 'Writing State in Flutter',
        date: DateTime.now(),
      ),
      ToDo(
        id: 2,
        title: 'Book',
        task: 'Writing State in Flutter',
        date: DateTime.now(),
      ),
      ToDo(
        id: 2,
        title: 'Book',
        task: 'Writing State in Flutter',
        date: DateTime.now(),
      ),
      ToDo(
        id: 2,
        title: 'Book',
        task: 'Writing State in Flutter',
        date: DateTime.now(),
      ),
      ToDo(
        id: 2,
        title: 'Book',
        task: 'Writing State in Flutter',
        date: DateTime.now(),
      ),
    ];
    return Padding(
      padding: EdgeInsets.all(
        5.0,
      ),
      child: Wrap(
        children: todoList.map(
          (e) {
            return Card(
              elevation: 40,
              child: Column(
                children: [
                  Row(
                    children: [
                      Card(
                        elevation: 10,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          e.id.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          e.title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 10,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          e.task,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          e.date.day.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
