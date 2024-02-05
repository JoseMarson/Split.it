import 'dart:math';

import 'package:flutter/material.dart';

abstract class AppGradients {
  Gradient get backgound;
}

class AppGradientesDefault implements AppGradients {
  @override
  Gradient get backgound => LinearGradient(colors: [
        Color(0xFF40B38C),
        Color(0xFF45CC93),
      ], transform: GradientRotation(2.35619 * pi));
}
