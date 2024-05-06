import 'package:flutter/material.dart';
import 'package:kfc_restaurant/controller/services/mobile_services.dart';

class SigninLogiceScreen extends StatefulWidget {
  const SigninLogiceScreen({super.key});

  @override
  State<SigninLogiceScreen> createState() => _SigninLogiceScreenState();
}

class _SigninLogiceScreenState extends State<SigninLogiceScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      MobileAuthService.checkAuthentication(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
        image: AssetImage("assets/images/signin.png"),
      ),
    );
  }
}
