import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  final VoidCallback onTap;
  const CreateButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.amber,
      onPressed: onTap,
      child: const Icon(Icons.add),
    );
  }
}
