import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/home/featured/widgets/featured_widgets.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({super.key});

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return const FeaturedWidgets();
  }
}
