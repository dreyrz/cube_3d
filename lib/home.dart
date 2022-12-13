import 'dart:math';
import 'package:flutter/material.dart';

import 'cube/cube.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double x = 0;
  double y = 0;
  double z = 0;
  void _reset() {
    x = 0;
    y = 0;
    z = 0;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => setState(_reset),
      onPanUpdate: ((details) {
        x += details.delta.dy * 0.01;
        y += -details.delta.dx * 0.01;
        setState(() {
          x %= pi * 2;
          y %= pi * 2;
        });
      }),
      child: Scaffold(
        appBar: AppBar(title: const Text("Cube")),
        body: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(x)
            ..rotateY(y),
          alignment: Alignment.center,
          child: const Center(child: Cube()),
        ),
      ),
    );
  }
}
