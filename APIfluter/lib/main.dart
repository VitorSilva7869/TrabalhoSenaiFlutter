import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/AboutScreen/about.dart';
import 'package:flutter_application_1/HomeScreen/HomeScreeen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
    
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: About(),
    );
  }
}
