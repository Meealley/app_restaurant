import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kfc_restaurant/controller/services/image_services.dart';

class RestaurantRegisterProvider extends ChangeNotifier {
  List<File> restaurantBannerImages = [];
  List<String> restaurantBannerImagesURL = [];

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
}
