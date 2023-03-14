import 'package:flutter/material.dart';
import 'package:fun_fund/constants.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.buttonTitle,
    required this.color,
    required this.onPressFunction,
  });

  final String buttonTitle;
  final Color color;
  final VoidCallback? onPressFunction;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressFunction,
      child: Text(
        buttonTitle,
        style: TextStyle(
            backgroundColor: kInactiveButton,
            color: color,
            fontSize: 16.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
