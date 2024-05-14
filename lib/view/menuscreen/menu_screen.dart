import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kfc_restaurant/controller/provider/food_provider.dart';
import 'package:kfc_restaurant/view/addfooditem/addfooditem_screen.dart';
import 'package:kfc_restaurant/view/menuscreen/widgets/menu_widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<FoodProvder>().getFoodData();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: MenuWidgets(
      floatingButtonClicked: () {
        Navigator.push(
          context,
          PageTransition(
            child: const AddFoodItemScreen(),
            type: PageTransitionType.rightToLeft,
          ),
        );
        log("Floating button clicked");
      },
    ));
  }
}
