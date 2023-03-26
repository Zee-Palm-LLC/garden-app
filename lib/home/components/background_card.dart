import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'),
              colorFilter: ColorFilter.mode(Colors.amber, BlendMode.srcIn),
              fit: BoxFit.cover)),
    );
  }
}
