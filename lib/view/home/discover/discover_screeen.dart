import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/home/discover/widgets/discover_widgets.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return const DiscoverWidgets();
  }
}
