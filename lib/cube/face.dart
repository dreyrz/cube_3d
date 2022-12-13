import 'package:flutter/material.dart';

class Face extends StatelessWidget {
  final Matrix4 transform;

  const Face(
    this.transform, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: transform,
      alignment: Alignment.center,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(color: Colors.red, border: Border.all()),
      ),
    );
  }
}
