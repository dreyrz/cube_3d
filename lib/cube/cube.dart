import 'dart:math';

import 'package:flutter/material.dart';

import 'face.dart';

class Cube extends StatelessWidget {
  const Cube({super.key});

  Matrix4 get identity => Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Face(identity..translate(0.0, 0.0, -100.0)),
        Face(
          identity
            ..translate(100.0, 0.0, 0.0)
            ..rotateY(-pi / 2),
        ),
        Face(
          identity
            ..translate(-100.0, 0.0, 0.0)
            ..rotateY(-pi / 2),
        ),
        Face(
          identity
            ..translate(0.0, -100.0, 0.0)
            ..rotateX(-pi / 2),
        ),
        Face(
          identity
            ..translate(0.0, 100.0, 0.0)
            ..rotateX(-pi / 2),
        ),
        Face(identity..translate(0.0, 0.0, 100.0)),
      ],
    );
  }
}
