// lib/app.dart
import 'package:flutter/material.dart';
import 'package:latihan/src/main_view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor App',
      home: MainView(),
    );
  }
}
