import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kfc_restaurant/constants/constants.dart';
import 'package:kfc_restaurant/controller/services/toast_message_services.dart';
import 'package:kfc_restaurant/model/add_food_model.dart';

class FoodDataCRUDServices {
  static uploadFoodData(BuildContext context, FoodModel data) async {
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

  static fetchFoodData() async {
    List<FoodModel> foodData = [];

    try {
      final QuerySnapshot<Map<String, dynamic>> snapshot = await firestore
          .collection('Food')
          .orderBy('uploadTime', descending: true)
          .where('restaurantUID', isEqualTo: auth.currentUser!.uid)
          .get();
      snapshot.docs.forEach((element) {
        foodData.add(FoodModel.fromMap(element.data()));
      });
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
    return foodData;
  }
}
