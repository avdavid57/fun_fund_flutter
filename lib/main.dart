import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/main_screen.dart';
import 'components/main_menu_bar.dart';

void main() {
  runApp(const FunFund());
}

class FunFund extends StatelessWidget {
  const FunFund({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kMainBackgroundColor,
        body: Column(
          children: const [
            MainScreen(),
            MainMenuBar(),
          ],
        ),
      ),
    );
  }
}