import 'package:flutter/material.dart';

import '../../../constants.dart';

class WelcomeButton extends StatelessWidget {
  WelcomeButton({this.tapEvent});

  final GestureTapCallback tapEvent;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          color: kPrimaryColor,
        ),
        width: 200.0,
        height: 50.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Lets Go',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              Image.asset(
                'assets/images/arrow.png',
                fit: BoxFit.scaleDown,
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
