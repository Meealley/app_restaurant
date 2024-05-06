import 'package:flutter/material.dart';
import 'package:kfc_restaurant/utils/horizontal_card.dart';
import 'package:kfc_restaurant/view/home/discover/widgets/discover_model.dart';

class DiscoverWidgets extends StatelessWidget {
  const DiscoverWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: discoverRestaurants.length,
        itemBuilder: (context, index) {
          final restaurant = discoverRestaurants[index];
          return HorizontalCard(
            restuarantName: restaurant.restaurantName,
            restaurantImage: restaurant.restaurantImage,
            price: restaurant.price,
            status: restaurant.status,
            rating: restaurant.rating,
            noOfratings: restaurant.noOfRatings,
          );
        },
      ),
    );
  }
}
