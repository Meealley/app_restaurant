import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/menuscreen/widgets/menu_widgets.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: MenuWidgets());
  }
}
