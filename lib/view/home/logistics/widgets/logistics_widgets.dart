import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class LogisticsWidgets extends StatelessWidget {
  const LogisticsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          title: const Text(
            "Mujin Logistics",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 2.h,
            horizontal: 3.w,
          ),
          children: [
            Text(
              "Easy package delivery with Swiftee",
              style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Send packages to friends, business and loved ones",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Column(
              children: [
                SizedBox(
                  height: 28.h,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 15, 150, 168),
                      borderRadius: BorderRadius.circular(8.sp),
                      image: const DecorationImage(
                        alignment: Alignment.bottomRight,
                        image: AssetImage("assets/images/box_illustraion.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 2.w,
                          top: 12.h,
                          child: Row(
                            children: [
                              const Text(
                                "Send a Package",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              const FaIcon(
                                FontAwesomeIcons.arrowRight,
                                color: Colors.white,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 28.h,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 15, 150, 168),
                      borderRadius: BorderRadius.circular(8.sp),
                      image: const DecorationImage(
                        alignment: Alignment.bottomLeft,
                        image: AssetImage("assets/images/dispatch_driver.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 2.w,
                          top: 12.h,
                          child: Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.arrowLeft,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              const Text(
                                "Recieve Package",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
