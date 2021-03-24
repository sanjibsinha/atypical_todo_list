import 'package:flutter/material.dart';
import '../models/to_do.dart';

class ListOfToDoPage extends StatelessWidget {
  const ListOfToDoPage({Key key, this.todoList}) : super(key: key);
  final List<ToDo> todoList;

  @override
  Widget build(BuildContext context) {
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
