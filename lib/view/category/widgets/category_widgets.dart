import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/category/category_details_page.dart';
import 'package:kfc_restaurant/view/category/widgets/category_image_mode.dart';

import 'package:sizer/sizer.dart';

class CategoryWidgets extends StatelessWidget {
  // final VoidCallback onTapToCategoryDetails;

  const CategoryWidgets({super.key});

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
          Text(
            "All Categories",
            style: TextStyle(fontSize: 13.sp),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3.h,
          ),
          GridView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 0.9,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                final category = categories[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryDetailPage(
                            categoryName: category.categoryName),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.sp),
                            color: Colors.grey.shade300,
                          ),
                          child: Image(
                            image: AssetImage(category.imagePath),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Text(category.categoryName)
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
