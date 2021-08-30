import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:travel_app_ui_2/Models/place.dart';
import 'package:travel_app_ui_2/Screens/home/components/grid_place_card.dart';
import 'package:travel_app_ui_2/Screens/home/components/liked_button.dart';
import 'package:travel_app_ui_2/constants.dart';
import 'package:travel_app_ui_2/responsive.dart';
import 'package:travel_app_ui_2/util.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        crossAxisCount: isLandscape(context) ? 3 : 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(20.0),
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 1.2,
        children: List.generate(demoPlaces.length, (index) {
          return GridPlaceCard(
            place: demoPlaces[index],
            tapEvent: () {},
          );
        }),
      ),
    );
  }
}
