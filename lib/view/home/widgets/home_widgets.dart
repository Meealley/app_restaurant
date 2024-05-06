import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kfc_restaurant/view/home/discover/discover_screeen.dart';
import 'package:kfc_restaurant/view/home/explore/explore_widgets.dart';
import 'package:kfc_restaurant/view/home/featured/featured_screen.dart';
import 'package:kfc_restaurant/view/home/logistics/logistics_screen.dart';
import 'package:kfc_restaurant/view/home/nearby_restaurant/nearby_restaurant_screen.dart';

import 'package:sizer/sizer.dart';

class HomeWidgets extends StatelessWidget {
  final String location;
  const HomeWidgets({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 5,
        surfaceTintColor: Colors.transparent,

        title: Row(
          children: [
            Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  location,
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/shopbag.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 2.w,
                ),
                const FaIcon(FontAwesomeIcons.sort)
              ],
            ),
          )
        ],
      ),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 3.w,
          vertical: 2.h,
        ),
        children: [
          SizedBox(
            height: 70,
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: const Offset(0, 3), // Shadow offset
                  ),
                ],
                border: Border.all(
                  color: Colors.black, // Border color
                  width: 0.5, // Border width
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                child: Image.asset("assets/images/banner_img.png",
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.sp,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(5.sp)),
                        child: const Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/restaurant.png'),
                              width: 50,
                              height: 50,
                            ),
                            Text(
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                                "Restaurant")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.circular(5.sp)),
                        child: const Column(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/images/supermarket.png'),
                              width: 50,
                              height: 50,
                            ),
                            Text(
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                                "Supermarket")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(5.sp)),
                        child: const Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/pharmacy.png'),
                              width: 50,
                              height: 50,
                            ),
                            Text(
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                                "Pharmacies")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogisticsScreen(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 60.w,
                    height: 9.4.h,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.sp),
                        color: const Color.fromARGB(255, 109, 9, 45),
                        image: const DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage("assets/images/box.png"),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 2.w,
                              child: const Text(
                                "Swiftee",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 27,
                                  color: Colors.white,
                                ),
                              )),
                          Positioned(
                            bottom: 0.6.h,
                            left: 2.w,
                            child: const Text(
                              "Get your package across \n the Globe 🌍  with Swiftee ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(5.sp)),
                child: const Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/pharmacy.png'),
                      width: 50,
                      height: 50,
                    ),
                    Text(
                      "More",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Divider(
            thickness: 3,
            color: Colors.grey.shade200,
          ),
          SizedBox(
            height: 1.h,
          ),
          const Text(
            "Explore",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          const ExploreWidgets(),
          SizedBox(
            height: 2.h,
          ),
          Divider(
            thickness: 3,
            color: Colors.grey.shade200,
          ),
          const Text(
            "Featured ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          // FeaturedScreen(),
          const FeaturedScreen(),
          SizedBox(
            height: 2.h,
          ),
          Divider(
            thickness: 3,
            color: Colors.grey.shade200,
          ),

          const Text(
            "Discover 🤤 ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 2.h),
          const DiscoverScreen(),
          SizedBox(height: 2.h),

          const NearbyRestarurant(),
        ],
      ),
    );
  }
}
