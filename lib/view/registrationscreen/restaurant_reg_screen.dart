import 'package:flutter/material.dart';
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
      restaurantLicenseController: _restaurantLicensceController,
      restaurantNameController: _restaurantNameController,
    ));
  }
}