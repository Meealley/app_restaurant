import 'package:flutter/material.dart';
import 'package:kfc_restaurant/utils/vertical_card.dart';

class NearbyRestarurant extends StatefulWidget {
  const NearbyRestarurant({super.key});

  @override
  State<NearbyRestarurant> createState() => _NearbyRestarurantState();
}

class _NearbyRestarurantState extends State<NearbyRestarurant> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const VerticalCard();
      },
    );
  }
}
