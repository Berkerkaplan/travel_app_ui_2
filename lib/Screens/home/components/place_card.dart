import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:travel_app_ui_2/Models/place.dart';
import 'package:travel_app_ui_2/Screens/home/components/liked_button.dart';
import 'package:travel_app_ui_2/constants.dart';
import 'package:travel_app_ui_2/util.dart';

class PlaceCard extends StatelessWidget {
  PlaceCard({this.place});
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage(place.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: 80.0,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            decoration: cardInfoDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      place.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    LikedButton(),
                  ],
                ),
                SmoothStarRating(
                  //Yıldıza puan vermeyi sağlıyor
                  allowHalfRating: false,
                  onRated: (v) {},
                  starCount: 5,
                  rating: place.rating,
                  size: 20.0,
                  isReadOnly: true,
                  color: kRatingStarColor,
                  borderColor: kRatingStarColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
