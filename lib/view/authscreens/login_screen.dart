import 'dart:developer';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:kfc_restaurant/controller/provider/auth_provider.dart';
import 'package:kfc_restaurant/controller/services/mobile_services.dart';
import 'package:kfc_restaurant/view/authscreens/widgets/login_widget.dart';

import 'package:provider/provider.dart';

class LoginScreenUser extends StatefulWidget {
  const LoginScreenUser({super.key});

  @override
  State<LoginScreenUser> createState() => _LoginScreenUserState();
}

class _LoginScreenUserState extends State<LoginScreenUser> {
  String _selectedCountry = '+234';
  final TextEditingController _controller = TextEditingController();
  bool receiveOTPButtonPressed = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        receiveOTPButtonPressed = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return LoginScreenWidget(
      OTPbuttonPressed: receiveOTPButtonPressed,
      text: "Phone number",
      onPressed: () {
        log(_controller.text);
        if (_controller.text.trim().isEmpty) {
          setState(() {
            receiveOTPButtonPressed = false;
          });
        } else {
          setState(() {
            receiveOTPButtonPressed = true;
          });
          context.read<MobileAuthProvier>().updateMobilenumber(
              "$_selectedCountry${_controller.text.trim()}");
          MobileAuthService.receiveOTP(
              context: context,
              mobileNumber: '$_selectedCountry${_controller.text.trim()}');
        }
      },
      selectedCountry: _selectedCountry,
      controller: _controller,
      onPressNext: () => log("Clicked"),
      onTapCountry: () {
        showCountryPicker(
          context: context,
          showPhoneCode: true,
          onSelect: (Country country) {
            setState(() {
              _selectedCountry = '+${country.phoneCode}';
            });
            log("Select your country: ${country.displayName}");
          },
        );
      },
    );
  }
}
