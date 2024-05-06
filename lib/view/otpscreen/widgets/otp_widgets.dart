import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

class OtpWidgets extends StatelessWidget {
  final String text;
  final int resendOTP;
  final TextEditingController textEditingController;
  final void Function(String)? onCompleted;
  final void Function(String)? onChanged;
  final StreamController<ErrorAnimationType>? errorController;
  final bool Function(String?)? beforeText;
  final VoidCallback? goBackButton;
  final VoidCallback nextButton;

  const OtpWidgets(
      {super.key,
      required this.text,
      required this.resendOTP,
      this.onCompleted,
      required this.textEditingController,
      this.errorController,
      this.beforeText,
      this.goBackButton,
      required this.nextButton,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            PinCodeTextField(
              appContext: context,
              length: 6,
              obscureText: false,
              textStyle: TextStyle(fontSize: 14.sp),
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(7.sp),
                fieldHeight: 50,
                fieldWidth: 50,
                activeFillColor: Colors.white,
                inactiveColor: Colors.grey.shade300,
                inactiveFillColor: Colors.grey.shade300,
                selectedColor: Colors.black,
                selectedFillColor: Colors.white,
                activeColor: Colors.black,
              ),
              animationDuration: const Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              controller: textEditingController,
              errorAnimationController: errorController,
              onCompleted: onCompleted,
              onChanged: onChanged,
              beforeTextPaste: beforeText,
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 1.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.sp),
                color: Colors.grey,
              ),
              child: Text(
                "I Haven't recieved the code at (0.$resendOTP)",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: resendOTP > 0 ? Colors.black38 : Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                left: 9.w,
                bottom: 3.h,
                child: GestureDetector(
                  onTap: goBackButton,
                  child: Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.arrowLeft,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      const Text("Go Back")
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 2.w,
                bottom: 2.h,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.5.w,
                      )),
                  onPressed: nextButton,
                  child: Row(
                    children: [
                      const Text("Next"),
                      SizedBox(
                        width: 3.w,
                      ),
                      FaIcon(
                        FontAwesomeIcons.arrowRight,
                        size: 13.sp,
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
