import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton(
      {super.key, required this.buttonTitle,
      required this.icon,
      required this.onPressFunction,
      required this.color});

  final String buttonTitle;
  final IconData icon;
  final Color? color;
  final VoidCallback? onPressFunction;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressFunction,
      icon: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
      label: Text(
        buttonTitle,
        style: const TextStyle(color: Colors.white),
      ),
      style: TextButton.styleFrom(
        backgroundColor: color,
        fixedSize: const Size(185, 75),
        elevation: 15,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
      ),
    );
  }
}
