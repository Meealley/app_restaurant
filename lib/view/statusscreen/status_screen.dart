import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/statusscreen/widgets/status_widgets.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: StatusWidgets());
  }
}
