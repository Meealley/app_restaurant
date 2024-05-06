import 'package:flutter/material.dart';
import 'package:kfc_restaurant/utils/reusable_text.dart';
import 'package:sizer/sizer.dart';

class LoginScreenWidget extends StatelessWidget {
  final String text;
  final String selectedCountry;
  final VoidCallback onTapCountry;
  final bool OTPbuttonPressed;
  final VoidCallback onPressed;
  final VoidCallback onPressNext;
  final TextEditingController controller;

  const LoginScreenWidget(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.onTapCountry,
      required this.selectedCountry,
      required this.onPressNext,
      required this.controller,
      required this.OTPbuttonPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 3.w,
          vertical: 7.h,
        ),
        children: [
          SizedBox(
            height: 2.h,
          ),
          const Text(
            "Create your account",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),

          SizedBox(
            height: 1.4.h,
          ),

          RichText(
            text: const TextSpan(
              text: 'Have an account? ',
              style: TextStyle(
                color: Colors.black, // Change the color of the regular text
                fontSize: 18,
                fontFamily: "Manrope",
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Login',
                  style: TextStyle(
                    color: Colors.green, // Change the color of the word "Login"
                    fontWeight: FontWeight.bold,
                    fontFamily: "Manrope",
                  ),
                  // Add onTap handler if needed
                  // onTap: () {
                  //   // Handle tap on "Login"
                  // },
                ),
              ],
            ),
          ),

          SizedBox(
            height: 2.h,
          ),

          RichText(
            text: TextSpan(
              text: text,
              style: const TextStyle(
                color: Colors.black, // Change the color of the regular text
                fontSize: 16,
                fontWeight: FontWeight.w600,

                fontFamily: "Manrope",
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: ' *',
                  style: TextStyle(
                    color: Colors.green, // Change the color of the word "Login"
                    fontWeight: FontWeight.bold,
                    fontFamily: "Manrope",
                  ),
                  // Add onTap handler if needed
                  // onTap: () {
                  //   // Handle tap on "Login"
                  // },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: onTapCountry,
                child: Container(
                  height: 5.5.h,
                  width: 20.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(
                      8.sp,
                    ),
                  ),
                  child: Text(
                    selectedCountry,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ),
              ),
              SizedBox(
                width: 70.w,
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        9.sp,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        9.sp,
                      ),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        9.sp,
                      ),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 2.5.h,
          ),

          RichText(
            text: const TextSpan(
              text: "Email address",
              style: TextStyle(
                color: Colors.black, // Change the color of the regular text
                fontSize: 16,
                fontWeight: FontWeight.w600,

                fontFamily: "Manrope",
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' *',
                  style: TextStyle(
                    color: Colors.green, // Change the color of the word "Login"
                    fontWeight: FontWeight.bold,
                    fontFamily: "Manrope",
                  ),
                  // Add onTap handler if needed
                  // onTap: () {
                  //   // Handle tap on "Login"
                  // },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "abcde@email.com",
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    9.sp,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    9.sp,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    9.sp,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2.5.h,
          ),
          RichText(
            text: const TextSpan(
              text: "First name",
              style: TextStyle(
                color: Colors.black, // Change the color of the regular text
                fontSize: 16,
                fontWeight: FontWeight.w600,

                fontFamily: "Manrope",
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' *',
                  style: TextStyle(
                    color: Colors.green, // Change the color of the word "Login"
                    fontWeight: FontWeight.bold,
                    fontFamily: "Manrope",
                  ),
                  // Add onTap handler if needed
                  // onTap: () {
                  //   // Handle tap on "Login"
                  // },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter first name",
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 2.w,
                  vertical: 0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    9.sp,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    9.sp,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    9.sp,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 2.5.h,
          ),
          RichText(
            text: const TextSpan(
              text: "Last name",
              style: TextStyle(
                color: Colors.black, // Change the color of the regular text
                fontSize: 16,
                fontWeight: FontWeight.w600,

                fontFamily: "Manrope",
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' *',
                  style: TextStyle(
                    color: Colors.green, // Change the color of the word "Login"
                    fontWeight: FontWeight.bold,
                    fontFamily: "Manrope",
                  ),
                  // Add onTap handler if needed
                  // onTap: () {
                  //   // Handle tap on "Login"
                  // },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter your last name",
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    9.sp,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    9.sp,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    9.sp,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 4.h,
          ),
          // ElevatedButton(
          //   onPressed: onPressed,
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.black,
          //     foregroundColor: Colors.white,
          //     minimumSize: Size(90.w, 6.h),
          //   ),
          //   child: Stack(
          //     children: [
          //       Align(
          //         alignment: Alignment.center,
          //         child: Text(
          //           "Next",
          //           style: TextStyle(
          //             fontSize: 12.sp,
          //           ),
          //         ),
          //       ),
          //       Positioned(
          //         right: 5.w,
          //         child: const Icon(Icons.forward),
          //       )
          //     ],
          //   ),
          // ),
          GestureDetector(
            onTap: onPressed,
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 13, 60, 14),
                borderRadius: BorderRadius.circular(5.sp),
              ),
              child: OTPbuttonPressed
                  ? const Center(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : const Center(
                      child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )),
            ),
          ),

          SizedBox(
            height: 2.h,
          ),
          const ReusableText(
            fontSize: 13,
            text:
                "By proceeding, I hereby consent to and agree with the terms and conditions outlined by Mujin Food. By agreeing to these terms, I acknowledge that I have read, understood, and accepted the policies, guidelines.",
            color: Colors.grey,
          ),
          SizedBox(
            height: 3.h,
          ),
          // TextButton(
          //   onPressed: onPressNext,
          //   style: TextButton.styleFrom(
          //     backgroundColor: Colors.red,
          //     minimumSize: Size(90.w, 6.h),
          //   ),
          //   child: Stack(
          //     children: [
          //       Align(
          //         alignment: Alignment.center,
          //         child: Text(
          //           "Continue with Google",
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 12.sp,
          //           ),
          //         ),
          //       ),
          //       Positioned(
          //         left: 4.w,
          //         child: FaIcon(
          //           FontAwesomeIcons.google,
          //           color: Colors.white,
          //           size: 2.h,
          //         ),
          //       )
          //     ],
          //   ),
          // )
          // CustomButton(
          //   text: "Continue with Google",
          //   onTapped: onPressNext,
          // )
        ],
      ),
    );
  }
}
