
import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({
    Key? key,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 1,
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: color ?? Theme.of(context).colorScheme.surface,
      ),
    );
  }
}