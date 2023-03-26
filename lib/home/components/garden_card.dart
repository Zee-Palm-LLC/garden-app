import 'package:flutter/material.dart';
import 'package:productive_app/models/garden.dart';

class GardenCard extends StatelessWidget {
  final GardenModel garden;
  const GardenCard({super.key, required this.garden});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(garden.image), fit: BoxFit.cover)),
      child: Text(
        garden.name,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),
      ),
    );
  }
}
