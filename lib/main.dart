import 'package:flutter/material.dart';
import 'package:testing_inherited_model/home_page.dart';

void main() {
  runApp(const ColorShuffler());
}

class ColorShuffler extends StatelessWidget {
  const ColorShuffler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
