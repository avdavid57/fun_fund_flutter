import 'package:flutter/material.dart';
import 'constants.dart';
import 'components/main_top_section.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const MainTopSection(),
            AppBar(
              // TODO Complete app bar menu items
              title: const Text('THIS IS THE APPBAR'),
              backgroundColor: kMenuBarBackgroundColor,
            ),
            Column(
              children: const [
                Text('THIS IS THE BOTTOM SECTION'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
