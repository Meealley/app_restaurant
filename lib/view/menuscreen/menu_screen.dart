import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/addfooditem/addfooditem_screen.dart';
import 'package:kfc_restaurant/view/menuscreen/widgets/menu_widgets.dart';
import 'package:page_transition/page_transition.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: MenuWidgets(
      floatingButtonClicked: () {
        Navigator.push(
          context,
          PageTransition(
            child: AddFoodItemScreen(),
            type: PageTransitionType.rightToLeft,
          ),
        );
        log("Floating button clicked");
      },
    ));
  }
}
