import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kfc_restaurant/constants/constants.dart';
import 'package:kfc_restaurant/controller/services/toast_message_services.dart';
import 'package:kfc_restaurant/model/add_food_model.dart';

class FoodDataCRUDServices {
  static uploadFoodData(BuildContext context, AddFoodModel data) async {
    try {
      await firestore
          .collection("Food")
          .doc(data.foodID)
          .set(data.toMap())
          .whenComplete(() {
        Navigator.pop(context);
        ToastService.sendScaffoldAlert(
          msg: "Food Added Successfully",
          toastStatus: "SUCCESS",
          context: context,
        );
      });
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}
