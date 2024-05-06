import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kfc_restaurant/view/addfooditem/widgets/fooddetails_textfield.dart';
import 'package:sizer/sizer.dart';

class AddFoodItemWidget extends StatelessWidget {
  final TextEditingController foodNameController;
  final TextEditingController foodDescriptionController;
  final TextEditingController foodPriceController;
  final bool foodIsVegetarian;

  const AddFoodItemWidget({
    super.key,
    required this.foodNameController,
    required this.foodDescriptionController,
    required this.foodPriceController,
    required this.foodIsVegetarian,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 3.w,
          vertical: 2.h,
        ),
        children: [
          SizedBox(
            height: 2.h,
          ),
          Container(
            height: 20.h,
            width: 94.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.sp),
              color: Colors.grey.shade300,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  height: 5.h,
                  width: 5.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.plus,
                      // color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  "Add",
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          FoodDetailsTextField(
            title: "Food Name",
            controller: foodNameController,
            hintText: "Enter the name of the food",
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          FoodDetailsTextField(
            title: "Food Description",
            controller: foodDescriptionController,
            hintText: "Description of the food",
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          FoodDetailsTextField(
            title: "Food Price",
            controller: foodPriceController,
            hintText: "Price for the food",
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            "Is Food vegetarian?",
            style: TextStyle(
              fontSize: 12.sp,
            ),
          )
        ],
      ),
    );
  }
}
