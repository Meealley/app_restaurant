import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  const CustomTextField(
      {super.key,
      required this.title,
      required this.controller,
      required this.hintText,
      required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: title,
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
              ),
            ],
          ),
        ),
        SizedBox(
          height: 0.8.h,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
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
      ],
    );
  }
}
