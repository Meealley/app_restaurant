import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kfc_restaurant/utils/custom_textfield.dart';
import 'package:sizer/sizer.dart';

class RestaurantRegistrationWidget extends StatelessWidget {
  final TextEditingController restaurantNameController;
  final TextEditingController restaurantLicenseController;
  final VoidCallback onTapped;

  const RestaurantRegistrationWidget({
    super.key,
    required this.restaurantNameController,
    required this.restaurantLicenseController,
    required this.onTapped,
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
          GestureDetector(
            onTap: onTapped,
            child: Container(
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
          ),
          SizedBox(
            height: 4.h,
          ),
          CustomTextField(
            title: "Restaurant Name",
            controller: restaurantNameController,
            hintText: "Enter the name your Restaurant",
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          CustomTextField(
            title: "Restaurant License",
            controller: restaurantLicenseController,
            hintText: "Enter Restaurant License",
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          SizedBox(
            height: 2.h,
          ),
        ],
      ),
    );
  }
}
