import 'package:flutter/material.dart';
import 'package:testing_inherited_model/color_widget.dart';
import 'package:testing_inherited_model/colors.dart';
import 'package:testing_inherited_model/colors_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var color1 = Colors.yellow;
  var color2 = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Shuffler'),
        centerTitle: true,
      ),
      body: Center(
        child: ColorsModel(
          color1: color1,
          color2: color2,
          child: Column(
            children: [
              const Spacer(flex: 1),
              const ColorWidget(
                color: AvailableColors.one,
              ),
              const Spacer(flex: 1),
              TextButton(
                onPressed: () {
                  setState(() {
                    color1 = colors.getRandomElement() as MaterialColor;
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Shuffle"),
                ),
              ),
              const Spacer(flex: 4),
              const ColorWidget(color: AvailableColors.two),
              const Spacer(flex: 1),
              TextButton(
                onPressed: () {
                  setState(() {
                    color2 = colors.getRandomElement() as MaterialColor;
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Shuffle"),
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
