import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const Input(),
      routes: {
        '/result':(context) => const Result()
      },
    );
  }
}
