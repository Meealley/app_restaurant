import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/category/widgets/category_widgets.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: CategoryWidgets());
  }
}
