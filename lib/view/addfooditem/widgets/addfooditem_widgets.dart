import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class AddFoodItemWidget extends StatelessWidget {
  const AddFoodItemWidget({super.key});

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
                Container(
                  height: 5.h,
                  width: 5.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
