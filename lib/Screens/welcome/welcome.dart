import 'package:flutter/material.dart';
import 'package:travel_app_ui_2/Screens/home/home.dart';
import 'package:travel_app_ui_2/Screens/welcome/components/top_banner.dart';
import 'package:travel_app_ui_2/Screens/welcome/components/welcome_button.dart';
import 'package:travel_app_ui_2/Screens/welcome/components/welcome_text.dart';
import 'package:travel_app_ui_2/constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopBanner(),
            WelcomeText(),
          ],
        ),
      ),
    );
  }
}
