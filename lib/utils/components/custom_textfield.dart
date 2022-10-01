import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.size,
    this.maxLength,
    this.maxLines,
  });

  final TextEditingController? controller;
  final String? hintText;
  final int? maxLength;
  final int? maxLines;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      height: size?.height ?? 40.0,
      width: size?.width ?? 250.0,
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Theme.of(context).colorScheme.onSurface,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: hintText,
          counterText: "",
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        maxLength: maxLength ?? 36,
        maxLines: maxLines ?? 1,
      ),
    );
  }
}
