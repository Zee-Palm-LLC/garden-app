import 'package:flutter/material.dart';
import 'package:productive_app/models/purchase_model.dart';

class PurchaseCard extends StatelessWidget {
  final Purchase purchase;
  const PurchaseCard({super.key, required this.purchase});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image: AssetImage(purchase.image), fit: BoxFit.cover)),
      ),
      title: Text(
        purchase.title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
      ),
      subtitle: Text(
        purchase.size,
        style: const TextStyle(fontSize: 14, color: Colors.grey),
      ),
      trailing: Text(
        '\$ ${purchase.price}',
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
      ),
    );
  }
}
