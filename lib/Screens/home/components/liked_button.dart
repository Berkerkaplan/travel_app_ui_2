import 'package:flutter/material.dart';
import 'package:travel_app_ui_2/util.dart';

class LikedButton extends StatelessWidget {
  const LikedButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: likedWidgetDecoration,
      child: IconButton(
        icon: Image.asset('assets/icons/heart.png'),
        onPressed: () {},
      ),
    );
  }
}
