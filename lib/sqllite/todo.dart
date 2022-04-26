import 'package:bil_bakalim/main.dart';
import 'package:flutter/material.dart';
import 'package:bil_bakalim/sqllite/screens/todolist.dart';

void main() {
  runApp(BenimUyg());
}

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
// class BenimUyg extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Görüşler',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TodoList(),
    );
  }
}
