// import 'dart:math';

import 'dart:developer';
// import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kfc_restaurant/constants/constants.dart';
import 'package:kfc_restaurant/model/restaurant_model.dart';
import 'package:kfc_restaurant/view/authscreens/signin_logic_screen.dart';
import 'package:page_transition/page_transition.dart';

class RestaurantCRUDService {
  static registerRestaurant(RestaurantModel data, BuildContext context) async {
    try {
      await firestore
          .collection("Restaurant")
          .doc(auth.currentUser!.uid)
          .set(data.toMap())
          .whenComplete(() {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
              child: const SigninLogiceScreen(),
              type: PageTransitionType.rightToLeft,
            ),
            (route) => false);
      });
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  static fetchRestaurantData() async {
    try {
      final DocumentSnapshot<Map<String, dynamic>> snapshot = await firestore
          .collection('Restaurant')
          .doc(auth.currentUser!.uid)
          .get();

      RestaurantModel data = RestaurantModel.fromMap(snapshot.data()!);
      return data;
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}
