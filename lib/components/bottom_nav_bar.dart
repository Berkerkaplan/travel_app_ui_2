import 'package:flutter/material.dart';
import 'package:travel_app_ui_2/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: double.infinity,
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            offset: Offset(0, 3),
            color: Colors.black.withAlpha(20),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavItem(
            icon: 'assets/icons/home.png',
            isActive: true,
          ),
          NavItem(
            icon: 'assets/icons/calendar.png',
            isActive: false,
          ),
          NavItem(
            icon: 'assets/icons/search.png',
            isActive: false,
          ),
          NavItem(
            icon: 'assets/icons/user.png',
            isActive: false,
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  NavItem({this.icon, this.isActive});
  final String icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Spacer(),
        IconButton(
          icon: Image.asset(icon),
          onPressed: () {},
        ),
        Spacer(),
        Container(
          height: 4.0,
          width: 35.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: isActive ? kPrimaryColor : Colors.transparent,
            boxShadow: [
              BoxShadow(
                  blurRadius: 6,
                  offset: Offset(0, -2),
                  color: isActive ? kPrimaryColor : Colors.transparent),
            ],
          ),
        ),
      ],
    );
  }
}
