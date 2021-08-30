import 'package:flutter/material.dart';
import 'package:travel_app_ui_2/constants.dart';

class PlacesCategories extends StatefulWidget {
  @override
  _PlacesCategoriesState createState() => _PlacesCategoriesState();
}

class _PlacesCategoriesState extends State<PlacesCategories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> placesCategories = [
      "Popular",
      "Featured",
      "Most Visited",
      "Europe",
      "Asia",
      "Africa",
      "America",
      "Australia"
    ];
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: SizedBox(
        height: 25.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: placesCategories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  this.selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  placesCategories[index],
                  style: TextStyle(
                    fontSize: 16.0,
                    color: selectedIndex == index ? kPrimaryColor : kTextColor,
                    fontWeight: selectedIndex == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
