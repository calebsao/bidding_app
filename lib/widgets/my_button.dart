import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton(
    this.context,
    this.text, {
    super.key,
    this.onTap,
    required this.borderColor,
    required this.color,
  });
  final BuildContext context;
  final String text;
  final void Function()? onTap;
  bool borderColor;
  bool color;

  Color isTransparent() {
    if (borderColor) {
      return Theme.of(context).colorScheme.primaryContainer;
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: isTransparent()),
          borderRadius: BorderRadius.circular(8),
          color: color
              ? Theme.of(context).colorScheme.primaryContainer
              : Colors.transparent,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}
