import 'package:flutter/material.dart';

class MobileAuthProvier extends ChangeNotifier {
  String? mobileNumber;
  String? verificationId;

  updateVerificationID(String verification) {
    verificationId = verification;
    notifyListeners();
  }

  updateMobilenumber(String number) {
    mobileNumber = number;
    notifyListeners();
  }
}
