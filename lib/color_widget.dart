import 'dart:developer' as devtools show log;

import 'package:flutter/material.dart';
import 'package:testing_inherited_model/colors.dart';
import 'package:testing_inherited_model/colors_model.dart';

class ColorWidget extends StatelessWidget {
  final AvailableColors color;

  const ColorWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    switch (color) {
      case AvailableColors.one:
        devtools.log('Color 1 Widget got rebuild.');
        break;
      case AvailableColors.two:
        devtools.log('Color 2 Widget got rebuild.');
    }

    final provider = ColorsModel.of(context, color);
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        color: color == AvailableColors.one ? provider.color1 : provider.color2,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
      ),
    );
  }
}
