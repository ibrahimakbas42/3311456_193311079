import 'package:flutter/material.dart';
import 'package:bil_bakalim/tarifler/home.dart';

void main() {
  runApp(MyApp());
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      //home: const HomePage(),
    );
  }
}
