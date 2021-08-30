import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui_2/constants.dart';

AppBar buildAppBar(BuildContext context,
    {String title, List<Widget> action, Widget leading}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style: GoogleFonts.merriweather(
        color: kTextColor,
        fontSize: 27.0,
      ),
    ),
  );
}
