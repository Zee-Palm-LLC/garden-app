import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productive_app/home/components/background_card.dart';
import 'package:productive_app/home/components/bottom_bar_card.dart';
import 'package:productive_app/home/components/garden_card.dart';
import 'package:productive_app/home/components/purchase_card.dart';
import 'package:productive_app/models/garden.dart';
import 'package:productive_app/models/purchase_model.dart';

import '../createGarden/create_garden.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF1F3F4),
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.grey),
        actions: [
          IconButton(
              onPressed: () {
                   Get.to(() => const CreateGardenView());
              },
              icon: const Icon(Icons.add_box_outlined, color: Colors.grey)),
          const SizedBox(width: 10),
          const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'))),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Your Perfect\nGarden",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.w900),
              )),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 24),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (ctx, index) =>
                    GardenCard(garden: dummyGardenList[index]),
                separatorBuilder: (ctx, index) => const SizedBox(width: 10),
                itemCount: dummyGardenList.length),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                const Positioned.fill(
                    top: 120, bottom: 0, child: BackgroundCard()),
                Positioned.fill(top: 190, bottom: 10, child: BottomBarCard()),
                Positioned.fill(
                  top: 0,
                  bottom: 80,
                  right: 50,
                  left: 50,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      height: 100,
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Purchase History",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(height: 20),
                          Expanded(
                            child: ListView.builder(
                                itemCount: dummyList.length,
                                itemBuilder: (ctx, index) {
                                  return PurchaseCard(
                                    purchase: dummyList[index],
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
