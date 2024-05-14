import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kfc_restaurant/controller/services/image_services.dart';
import 'package:kfc_restaurant/controller/services/restaurant_crud_services.dart';
import 'package:kfc_restaurant/model/restaurant_model.dart';

class RestaurantProvider extends ChangeNotifier {
  List<File> restaurantBannerImages = [];
  List<String> restaurantBannerImagesURL = [];
  RestaurantModel? restaurantData;

  getRestaurantBannerImages(BuildContext context) async {
    restaurantBannerImages =
        await ImageServices.getImagesFromGallery(context: context);
    notifyListeners();
  }

  updateRestaurantBannerImagesURL(BuildContext context) async {
    restaurantBannerImagesURL =
        await ImageServices.uploadImagesToFirebaseStorageAndGetURL(
      images: restaurantBannerImages,
      context: context,
    );
    notifyListeners();
  }

  getRestaurantData() async {
    restaurantData = await RestaurantCRUDService.fetchRestaurantData();
    notifyListeners();
  }
}
