import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/addfooditem/widgets/addfooditem_widgets.dart';

class AddFoodItemScreen extends StatefulWidget {
  const AddFoodItemScreen({super.key});

  @override
  State<AddFoodItemScreen> createState() => _AddFoodItemScreenState();
}

class _AddFoodItemScreenState extends State<AddFoodItemScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: AddFoodItemWidget());
  }
}
