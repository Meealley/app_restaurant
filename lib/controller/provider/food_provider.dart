import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kfc_restaurant/controller/services/food_data_crud_services.dart';
import 'package:kfc_restaurant/controller/services/image_services.dart';
import 'package:kfc_restaurant/model/add_food_model.dart';

class FoodProvder extends ChangeNotifier {
  File? foodImage;
  String? foodImageURL;
  List<FoodModel> items = [];

  pickFoodImageFromGallery(BuildContext context) async {
    foodImage = await ImageServices.pickSingleImage(context: context);
    notifyListeners();
  }

  uploadImageAndGetFoodImageURL(BuildContext context) async {
    List<String> url =
        await ImageServices.uploadImagesToFirebaseStorageAndGetURL(
      images: [foodImage!],
      context: context,
    );
    if (url.isNotEmpty) {
      foodImageURL = url[0];
      log(foodImageURL!);
    }
    notifyListeners();
  }

  getFoodData() async {
    items = await FoodDataCRUDServices.fetchFoodData();
    notifyListeners();
  }
}
