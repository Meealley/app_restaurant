import 'package:flutter/material.dart';
import 'package:kfc_restaurant/constants/constants.dart';
import 'package:kfc_restaurant/controller/provider/add_food_provider.dart';
import 'package:kfc_restaurant/controller/services/food_data_crud_services.dart';
import 'package:kfc_restaurant/controller/services/toast_message_services.dart';
import 'package:kfc_restaurant/model/add_food_model.dart';
import 'package:kfc_restaurant/view/addfooditem/widgets/addfooditem_widgets.dart';
import 'package:provider/provider.dart';

class AddFoodItemScreen extends StatefulWidget {
  const AddFoodItemScreen({super.key});

  @override
  State<AddFoodItemScreen> createState() => _AddFoodItemScreenState();
}

class _AddFoodItemScreenState extends State<AddFoodItemScreen> {
  final TextEditingController _foodNameController = TextEditingController();
  final TextEditingController _foodDescriptionController =
      TextEditingController();
  final TextEditingController _foodPriceController = TextEditingController();
  bool _foodIsVegetarian = false;
  bool _isAddFoodPressed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AddFoodItemWidget(
        foodNameController: _foodNameController,
        foodDescriptionController: _foodDescriptionController,
        foodIsVegetarian: _foodIsVegetarian,
        foodPriceController: _foodPriceController,
        onTappedIsVegetarian: () {
          setState(() {
            _foodIsVegetarian = true;
          });
        },
        onTappedNonVegetarian: () {
          setState(() {
            _foodIsVegetarian = false;
          });
        },
        addImageTapped: () async {
          await context
              .read<AddFoodProvder>()
              .pickFoodImageFromGallery(context);
        },
        addFoodButtonPressed: () async {
          if (_foodNameController.text.trim().isEmpty ||
              _foodPriceController.text.trim().isEmpty ||
              _foodDescriptionController.text.trim().isEmpty) {
            setState(() {
              _isAddFoodPressed = false;
            });
            ToastService.sendScaffoldAlert(
                msg: "Complete the Form",
                toastStatus: "WARNING",
                context: context);
          } else {
            setState(() {
              _isAddFoodPressed = true;
            });
            await context
                .read<AddFoodProvder>()
                .uploadImageAndGetFoodImageURL(context);
            String foodID = uuid.v1().toString();
            AddFoodModel data = AddFoodModel(
              foodID: foodID,
              uploadTime: DateTime.now(),
              name: _foodNameController.text.trim(),
              restaurantUID: auth.currentUser!.uid,
              description: _foodDescriptionController.text.trim(),
              foodImageURL: context.read<AddFoodProvder>().foodImageURL!,
              isVegetarian: _foodIsVegetarian,
              price: _foodPriceController.text.trim(),
            );
            FoodDataCRUDServices.uploadFoodData(context, data);
          }
        },
        isaddFoodPressed: _isAddFoodPressed,
      ),
    );
  }
}
