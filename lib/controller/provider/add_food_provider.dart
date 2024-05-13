import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kfc_restaurant/controller/services/image_services.dart';

class AddFoodProvder extends ChangeNotifier {
  File? foodImage;
  String? foodImageURL;

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
    }
    notifyListeners();
  }
}
