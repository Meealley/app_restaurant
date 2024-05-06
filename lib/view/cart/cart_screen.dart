import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/cart/widgets/cart_widgets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return const CartWidgets();
  }
}
