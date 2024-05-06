import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/home/explore/explore_image_model.dart';
import 'package:sizer/sizer.dart';

class ExploreWidgets extends StatelessWidget {
  const ExploreWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12.h,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: explore.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final exploreData = explore[index];
          return Padding(
            padding: EdgeInsets.only(right: 3.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 3.h,
                  backgroundColor: Colors.grey.shade200,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 3.h - 2,
                    child: Image.asset(exploreData.imagePath),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  exploreData.restaurantName.length > 8
                      ? '${exploreData.restaurantName.substring(0, 8)}-\n${exploreData.restaurantName.substring(8)}'
                      : exploreData.restaurantName,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
