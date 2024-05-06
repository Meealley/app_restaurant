import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      width: 94.w,
      margin: EdgeInsets.symmetric(vertical: 1.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.sp,
        ),
        color: Colors.grey.shade300,
      ),
    );
  }
}
