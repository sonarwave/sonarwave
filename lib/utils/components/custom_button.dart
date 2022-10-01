import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.onpressed,
    this.size,
    this.leadingIcon,
    this.trailingIcon,
    this.padding,
    this.backgroundColor,
    super.key,
  });

  final String text;
  final Size? size;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        padding: padding ?? const EdgeInsets.all(8.0),
        height: size?.height ?? 40.0,
        width: size?.width ?? 250.0,
        decoration: ShapeDecoration(
          shape: const StadiumBorder(),
          color: backgroundColor ?? Theme.of(context).colorScheme.surface,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: leadingIcon ?? const SizedBox.shrink(),
            ),
            Text(
              text,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            Expanded(
              child: trailingIcon ?? const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
