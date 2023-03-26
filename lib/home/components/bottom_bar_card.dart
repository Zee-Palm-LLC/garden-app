import 'package:flutter/material.dart';

class BottomBarCard extends StatelessWidget {
  final List<IconData> icons = [Icons.home, Icons.settings, Icons.search];
  BottomBarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 12),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(icons.length,
            (index) => Icon(icons[index], color: Colors.white, size: 35)),
      ),
    );
  }
}
