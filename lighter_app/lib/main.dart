import 'package:flutter/material.dart';
import 'package:lighter_app/lighter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LighterScreen()
    );
  }
}
