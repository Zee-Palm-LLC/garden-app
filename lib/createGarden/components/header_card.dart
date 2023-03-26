import 'package:flutter/material.dart';

class CreateHeaderCard extends StatelessWidget {
  const CreateHeaderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      color: Colors.green,
      child: const Text(
        "New Garden\nCreation",
        style: TextStyle(
            color: Colors.white, fontSize: 34, fontWeight: FontWeight.w800),
      ),
    );
  }
}
