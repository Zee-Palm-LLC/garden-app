import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  final VoidCallback favoriteCallback;
  const Body({super.key, required this.favoriteCallback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        color: Colors.green.withOpacity(0.9),
        child: Column(children: [
          const SizedBox(height: 50),
          Image.asset('assets/gardenPot.png', height: 250),
          const Spacer(),
          const Text(
            "There's noting on the list\nat the moment.",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.5),
                  fixedSize: Size(Get.width, 60)),
              onPressed: favoriteCallback,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.favorite_outline_rounded, size: 40),
                  SizedBox(width: 20),
                  Text(
                    "ADD TO FAVORITES",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              )),
          const SizedBox(height: 20)
        ]),
      ),
    );
  }
}
