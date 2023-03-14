import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fun_fund/constants.dart';
import 'package:fun_fund/components/large_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum MainButtonClicked {
  funds,
  rewards,
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final String topAssetName = 'assets/backgrounds/topSectiontopBackground.svg';
  MainButtonClicked mainButtonClicked = MainButtonClicked.funds;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(children: [
      SvgPicture.asset(
        topAssetName,
        fit: BoxFit.fill,
      ),
      const Positioned(
        bottom: 395,
        left: 25,
        child: Text(
          'Fun Fund',
          style: kLargeLabelTextStyle,
        ),
      ),
      const Positioned(
        bottom: 375,
        left: 25,
        child: Text(
          // TODO Update name of user
          'Hi, Thuy',
          style: kSmallLabelTextStyle,
        ),
      ),
      // TODO Link up profile icon
      const Positioned(
        bottom: 375,
        right: 25,
        child: Icon(
          Icons.account_circle,
          size: 60.0,
        ),
      ),
      Positioned(
        bottom: 305,
        left: 25,
        child: ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black87,
            shape: const StadiumBorder(),
          ),
          child: const Text(
            'USD',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      const Positioned(
        bottom: 215,
        left: 25,
        child: Text(
          // TODO Link up bank value
          '1,135.00',
          style: kLargeFundBalanceText,
        ),
      ),
      const Positioned(
        bottom: 195,
        left: 25,
        child: Text(
          // TODO Link up bank value
          '+135.00 (10%) in the last 30 days',
          style: kSmallLabelTextStyle,
        ),
      ),
      Positioned(
        bottom: 30,
        right: 15,
        child: LargeButton(
          buttonTitle: 'Funds',
          icon: FontAwesomeIcons.piggyBank,
          onPressFunction: () {
            // TODO Clicking button shows bank savings
            setState(() {
              mainButtonClicked = MainButtonClicked.funds;
            });
          },
          color: mainButtonClicked == MainButtonClicked.funds
              ? kMainBackgroundColor
              : kInactiveButton.withOpacity(0.5),
        ),
      ),
      Positioned(
        bottom: 30,
        left: 15,
        child: LargeButton(
          buttonTitle: 'Rewards',
          icon: FontAwesomeIcons.plane,
          onPressFunction: () {
            // TODO Clicking button shows rewards progress
            setState(() {
              mainButtonClicked = MainButtonClicked.rewards;
            });
          },
          color: mainButtonClicked == MainButtonClicked.rewards
              ? kMainBackgroundColor
              : kInactiveButton.withOpacity(0.5),
        ),
      ),
    ]));
  }
}
