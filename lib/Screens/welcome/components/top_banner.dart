import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
        ),
        child: Image.asset(
          'assets/image/welcome.jpg',
          height: size.height * 0.5,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
