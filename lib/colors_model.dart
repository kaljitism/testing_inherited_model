import 'package:flutter/cupertino.dart';
import 'package:testing_inherited_model/colors.dart';

class ColorsModel extends InheritedModel<AvailableColors> {
  final AvailableColors color1;
  final AvailableColors color2;

  const ColorsModel({
    super.key,
    required this.color1,
    required this.color2,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }

  @override
  bool updateShouldNotifyDependent(
      covariant InheritedModel<AvailableColors> oldWidget,
      Set<AvailableColors> dependencies) {
    // TODO: implement updateShouldNotifyDependent
    throw UnimplementedError();
  }
}
