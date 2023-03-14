import 'package:flutter/material.dart';
import 'package:fun_fund/constants.dart';
import 'menu_button.dart';

class MainMenuBar extends StatelessWidget {
  const MainMenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      decoration: BoxDecoration(
        color: kMenuBarBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          MenuButton(
            buttonTitle: 'Dues',
            color: Colors.white,
            onPressFunction: null,
          ),
          MenuButton(
              buttonTitle: 'Request',
              color: Colors.white,
              onPressFunction: null),
          MenuButton(
            buttonTitle: 'Rules',
            color: Colors.white,
            onPressFunction: null,
          ),
          MenuButton(
            buttonTitle: 'Transactions',
            color: Colors.white,
            onPressFunction: null,
          ),
        ],
      ),
    );
  }
}
