import 'package:flutter/material.dart';
import 'package:travel_app_ui_2/Screens/home/home.dart';
import 'package:travel_app_ui_2/Screens/welcome/components/welcome_button.dart';

import '../../../constants.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(38.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Winter\n' + 'Vacation Trips',
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.w700,
              color: kTextColor,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            '',
            style: TextStyle(
              fontSize: 16.0,
              color: kTextColor,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          WelcomeButton(
            tapEvent: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
