import 'package:flutter/material.dart';
import 'package:workshop3_191/screen/item.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CET App ID:191"),
          backgroundColor: const Color.fromARGB(255, 195, 255, 0),
          centerTitle: true,
        ), // AppBar
        body: const Item(),
      ), // Scaffold
    ); // MaterialApp
  }
}