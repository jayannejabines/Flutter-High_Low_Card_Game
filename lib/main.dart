import 'package:flutter/material.dart';
import 'package:high_low_card_game/index.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Index(),
      debugShowCheckedModeBanner: false,
    );
  }
}
