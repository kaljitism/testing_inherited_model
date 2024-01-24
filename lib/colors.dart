import 'dart:math';

import 'package:flutter/material.dart';

enum AvailableColors { one, two }

final colors = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.purple,
  Colors.cyan,
  Colors.amber,
  Colors.deepPurpleAccent
];

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(Random().nextInt(length));
}
