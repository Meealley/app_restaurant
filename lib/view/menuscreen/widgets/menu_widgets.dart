import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuWidgets extends StatelessWidget {
  final VoidCallback floatingButtonClicked;
  const MenuWidgets({super.key, required this.floatingButtonClicked});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: floatingButtonClicked,
        child: const FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
      ),
      body: const Center(
        child: Text("This is the menu screen ... "),
      ),
    );
  }
}
