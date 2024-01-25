import 'dart:developer' as devtools show log;

import 'package:flutter/material.dart';
import 'package:testing_inherited_model/colors.dart';

class ColorsModel extends InheritedModel<AvailableColors> {
  final MaterialColor color1;
  final MaterialColor color2;

  const ColorsModel({
    super.key,
    required this.color1,
    required this.color2,
    required super.child,
  });

  static ColorsModel of(BuildContext context, AvailableColors aspect) {
    return InheritedModel.inheritFrom<ColorsModel>(
      context,
      aspect: aspect,
    )!;
  }

  @override
  bool updateShouldNotify(covariant ColorsModel oldWidget) {
    devtools.log('updateShouldNotify');
    return color1 != oldWidget.color1 || color2 != oldWidget.color2;
  }

  @override
  bool updateShouldNotifyDependent(
      covariant ColorsModel oldWidget, Set<AvailableColors> dependencies) {
    devtools.log('updateShouldNotifyDependent');
    if (dependencies.contains(AvailableColors.one) &&
        color1 != oldWidget.color1) {
      return true;
    }
    if (dependencies.contains(AvailableColors.two) &&
        color2 != oldWidget.color2) {
      return true;
    } else {
      return false;
    }
  }
}
