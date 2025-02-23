import 'package:belajar_widget/widget/sample_bottom_navbar.dart';
import 'package:belajar_widget/widget/sample_container.dart';
import 'package:belajar_widget/widget/sample_images.dart';
import 'package:belajar_widget/widget/sample_listview.dart';
import 'package:belajar_widget/widget/sample_listview_horizontal.dart';
import 'package:belajar_widget/widget/sample_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SampleBottomNavbar(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Belajar Widget",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const SampleText(),
    );
  }
}
