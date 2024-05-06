import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class HorizontalCard extends StatelessWidget {
  final String restuarantName;
  final String restaurantImage;
  final String price;
  final String status;
  final double rating;
  final int noOfratings;
  const HorizontalCard({
    super.key,
    required this.restuarantName,
    required this.restaurantImage,
    required this.price,
    required this.status,
    required this.rating,
    required this.noOfratings,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      // padding: EdgeInsets.symmetric(horizontal: 2.w),
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      height: 100,
      width: 305,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.sp),
            child: Image.asset(
              restaurantImage,
              height: 180,
              width: 400,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(restuarantName),
              const FaIcon(
                FontAwesomeIcons.heart,
              )
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.motorcycle,
                    size: 13,
                  ),
                  Text(
                    " From \$$price ",
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const Text("| "),
                  Text(
                    status,
                    style: TextStyle(
                      color: status == "Open" ? Colors.green : Colors.red,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.star,
                    size: 17,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(rating.toString()),
                  Text("(${noOfratings.toString()})")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
