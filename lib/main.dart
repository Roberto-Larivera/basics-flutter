import 'package:flutter/material.dart';

// importazione di file
import 'package:basics/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.pinkTeal(),
      ),
    ),
  );
}
