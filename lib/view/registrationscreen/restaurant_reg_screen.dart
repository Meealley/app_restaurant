import 'dart:developer';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:kfc_restaurant/controller/provider/restaurant_register_provider.dart';
import 'package:kfc_restaurant/controller/services/image_services.dart';
import 'package:kfc_restaurant/view/registrationscreen/widgets/restaurant_reg_widgets.dart';
import 'package:provider/provider.dart';

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
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: RestaurantRegistrationWidget(
      onTapped: () async {
        // await ImageServices.getImagesFromGallery(context: context);

        // await ImageServices.
        await context
            .read<RestaurantRegisterProvider>()
            .getRestaurantBannerImages(context);

        log("Clicked on the Images container");
      },
      restaurantLicenseController: _restaurantLicensceController,
      restaurantNameController: _restaurantNameController,
      carouselController: _carouselController,
    ));
  }
}
