import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kfc_restaurant/controller/provider/food_provider.dart';
import 'package:kfc_restaurant/model/add_food_model.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class MenuWidgets extends StatelessWidget {
  final VoidCallback floatingButtonClicked;
  const MenuWidgets({super.key, required this.floatingButtonClicked});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu Screen 🗒️",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: floatingButtonClicked,
        child: const FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
      ),
      body: Consumer<FoodProvder>(
        builder: (context, foodProvider, child) {
          if (foodProvider.items.isEmpty) {
            return Center(
              child: Text("Add Food items"),
            );
          } else {
            return ListView.builder(
              itemCount: foodProvider.items.length,
              padding: EdgeInsets.symmetric(
                horizontal: 3.w,
                vertical: 2.h,
              ),
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                FoodModel foodData = foodProvider.items[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 1.h),
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.sp),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.sp),
                          image: DecorationImage(
                            image: NetworkImage(foodData.foodImageURL),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        foodData.name,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Text(
                        foodData.description,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            children: [
                              Text(
                                '\u20A6${foodData.discountedPrice}',
                                style: TextStyle(
                                  fontSize: 17,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              Text(
                                '\u20A6${foodData.actualPrice}',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
