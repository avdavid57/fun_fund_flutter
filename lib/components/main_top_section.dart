import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fun_fund/constants.dart';

class MainTopSection extends StatelessWidget {
  const MainTopSection({
    super.key,
  });

  final String topAssetName = 'images/topSectiontopBackground.svg';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        SvgPicture.asset(
          topAssetName,
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Fun Fund',
                        style: kLargeLabelTextStyle,
                      ),
                      Text(
                        // TODO Update name of user
                        'Hi, Thuy',
                        style: kSmallLabelTextStyle,
                      ),
                    ],
                  ),
                  // TODO Link up profile icon
                  const Icon(
                    Icons.account_circle,
                    size: 60.0,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '\$1,135.00',
                      style: kLargeFundBalanceText,
                    ),
                    Text(
                      '+ 135.00 (10%) last 30 days',
                      style: kSmallLabelTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
