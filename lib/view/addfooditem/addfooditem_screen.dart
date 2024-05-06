import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/addfooditem/widgets/addfooditem_widgets.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AddFoodItemWidget(
        foodNameController: _foodNameController,
        foodDescriptionController: _foodDescriptionController,
        foodIsVegetarian: true,
        foodPriceController: _foodPriceController,
      ),
    );
  }
}
