import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kfc_restaurant/controller/provider/food_provider.dart';
import 'package:kfc_restaurant/utils/custom_button.dart';
import 'package:kfc_restaurant/utils/custom_textfield.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class AddFoodItemWidget extends StatelessWidget {
  final TextEditingController foodNameController;
  final TextEditingController foodDescriptionController;
  final TextEditingController discountedPriceController;
  final TextEditingController actualPriceController;
  final bool foodIsVegetarian;
  final VoidCallback onTappedIsVegetarian;
  final VoidCallback onTappedNonVegetarian;
  final VoidCallback addImageTapped;
  final VoidCallback addFoodButtonPressed;
  final bool isaddFoodPressed;

  const AddFoodItemWidget(
      {super.key,
      required this.foodNameController,
      required this.foodDescriptionController,
      required this.discountedPriceController,
      required this.foodIsVegetarian,
      required this.onTappedIsVegetarian,
      required this.onTappedNonVegetarian,
      required this.addImageTapped,
      required this.addFoodButtonPressed,
      required this.isaddFoodPressed,
      required this.actualPriceController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 3.w,
          vertical: 2.h,
        ),
        children: [
          SizedBox(
            height: 2.h,
          ),
          Consumer<FoodProvder>(builder: (context, addFoodProvider, child) {
            return GestureDetector(
              onTap: addImageTapped,
              child: Container(
                height: 20.h,
                width: 94.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.sp),
                  color: Colors.grey.shade300,
                ),
                child: Builder(builder: (context) {
                  if (addFoodProvider.foodImage != null) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: .5.h),
                      child: Image(
                        image: FileImage(addFoodProvider.foodImage!),
                        fit: BoxFit.contain,
                      ),
                    );
                  } else {
                    return Column(
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
                    );
                  }
                }),
              ),
            );
          }),
          SizedBox(
            height: 4.h,
          ),
          CustomTextField(
            title: "Name",
            controller: foodNameController,
            hintText: "Enter the name of the food",
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          CustomTextField(
            title: "Description",
            controller: foodDescriptionController,
            hintText: "Description of the food",
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          CustomTextField(
            title: "Actual Price",
            controller: actualPriceController,
            hintText: "Actual Price for the food",
            keyboardType: TextInputType.text,
          ),
          CustomTextField(
            title: "Discount Price",
            controller: discountedPriceController,
            hintText: "Discount amount for the food",
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            "Is Food vegetarian?",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: .8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: onTappedIsVegetarian,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 3.h,
                          width: 3.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.sp),
                            color: foodIsVegetarian
                                ? Colors.green
                                : Colors.transparent,
                          ),
                          child: foodIsVegetarian
                              ? FaIcon(
                                  FontAwesomeIcons.check,
                                  size: 2.4.h,
                                  color: foodIsVegetarian
                                      ? Colors.black
                                      : Colors.grey,
                                )
                              : FaIcon(
                                  FontAwesomeIcons.x,
                                  size: 1.7.h,
                                  color: Colors.red,
                                ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "Vegetarian",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTappedNonVegetarian,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 3.h,
                          width: 3.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.sp),
                            color: !foodIsVegetarian
                                ? Colors.green
                                : Colors.transparent,
                          ),
                          child: !foodIsVegetarian
                              ? FaIcon(
                                  FontAwesomeIcons.check,
                                  size: 2.4.h,
                                  color: !foodIsVegetarian
                                      ? Colors.black
                                      : Colors.grey,
                                )
                              : FaIcon(
                                  FontAwesomeIcons.x,
                                  size: 1.7.h,
                                  color: Colors.red,
                                ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "Non-Vegetarian",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),

          //Button Pressed
          GestureDetector(
            onTap: addFoodButtonPressed,
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 13, 60, 14),
                borderRadius: BorderRadius.circular(5.sp),
              ),
              child: isaddFoodPressed
                  ? const Center(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : const Center(
                      child: Text(
                      "Add Food",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )),
            ),
          ),
        ],
      ),
    );
  }
}
