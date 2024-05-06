import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kfc_restaurant/controller/provider/auth_provider.dart';
import 'package:kfc_restaurant/controller/services/mobile_services.dart';
import 'package:kfc_restaurant/view/otpscreen/widgets/otp_widgets.dart';

import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _pinController = TextEditingController();
  final StreamController<ErrorAnimationType> _errorController =
      StreamController<ErrorAnimationType>();

  int resendOTPCounter = 60;

//This is the function for decreasing counter
  void decreaseOTPCounter() async {
    if (resendOTPCounter > 0) {
      setState(() {
        resendOTPCounter -= 1;
      });
      await Future.delayed(const Duration(seconds: 1), () {
        decreaseOTPCounter();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      decreaseOTPCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: OtpWidgets(
        text:
            "Enter the 4-digit code sent to you at ${context.read<MobileAuthProvier>().mobileNumber}",
        textEditingController: _pinController,
        errorController: _errorController,
        resendOTP: resendOTPCounter,
        nextButton: () {
          MobileAuthService.verifyOTP(
              context: context, otp: _pinController.text.trim());
          log("Next button clicked");
        },
        goBackButton: () => print("Back button clicked"),
      ),
    );
  }
}
