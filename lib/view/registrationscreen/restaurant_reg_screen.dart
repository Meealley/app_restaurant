import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kfc_restaurant/controller/services/image_services.dart';
import 'package:kfc_restaurant/view/registrationscreen/widgets/restaurant_reg_widgets.dart';

class RestaurantRegistrationScreen extends StatefulWidget {
  const RestaurantRegistrationScreen({super.key});

  @override
  State<RestaurantRegistrationScreen> createState() =>
      _RestaurantRegistrationScreenState();
}

class _RestaurantRegistrationScreenState
    extends State<RestaurantRegistrationScreen> {
  final TextEditingController _restaurantLicensceController =
      TextEditingController();
  final TextEditingController _restaurantNameController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: RestaurantRegistrationWidget(
      onTapped: () async {
        await ImageServices.getImagesFromGallery(context: context);

        log("Clicked on the Images container");
      },
      restaurantLicenseController: _restaurantLicensceController,
      restaurantNameController: _restaurantNameController,
    ));
  }
}
