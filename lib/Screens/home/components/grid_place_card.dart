import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:travel_app_ui_2/Models/place.dart';
import 'package:travel_app_ui_2/Screens/home/components/liked_button.dart';
import 'package:travel_app_ui_2/constants.dart';
import 'package:travel_app_ui_2/util.dart';

class GridPlaceCard extends StatelessWidget {
  GridPlaceCard({this.place, this.tapEvent});

  final Place place;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapEvent,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          children: [
            Hero(
              tag: place.image,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  place.image,
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: 70.0,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
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
                              fontSize: 12.0,
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
                        size: 15.0,
                        isReadOnly: true,
                        color: kRatingStarColor,
                        borderColor: kRatingStarColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
