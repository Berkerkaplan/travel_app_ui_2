import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:travel_app_ui_2/Models/place.dart';
import 'package:travel_app_ui_2/Screens/home/components/liked_button.dart';
import 'package:travel_app_ui_2/Screens/home/components/places_categories.dart';
import 'package:travel_app_ui_2/Screens/home/components/popular_places.dart';
import 'package:travel_app_ui_2/Screens/home/components/recomended_places.dart';
import 'package:travel_app_ui_2/Screens/home/components/recommended.dart';
import 'package:travel_app_ui_2/components/app_bar.dart';
import 'package:travel_app_ui_2/components/bottom_nav_bar.dart';
import 'package:travel_app_ui_2/components/hamburger_menu.dart';
import 'package:travel_app_ui_2/components/user_avatar.dart';
import 'package:travel_app_ui_2/constants.dart';
import 'package:travel_app_ui_2/responsive.dart';

import '../../util.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: buildAppBar(
        context,
        title: 'Discover',
        leading: HamburgerMenu(),
        action: [
          UserAvatar(),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PlacesCategories(),
            PopularPlaces(),
            Recommended(),
            RecommendedPlaces(),
          ],
        ),
      ),
    );
  }
}
