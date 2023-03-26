import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productive_app/createGarden/components/create_view_body_card.dart';
import 'package:productive_app/enums/select_item.dart';

import 'components/create_button.dart';
import 'components/header_card.dart';

class CreateGardenView extends StatefulWidget {
  const CreateGardenView({super.key});

  @override
  State<CreateGardenView> createState() => _CreateGardenViewState();
}

class _CreateGardenViewState extends State<CreateGardenView> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          PopupMenuButton<SampleItem>(
            initialValue: selectedMenu,
            onSelected: (SampleItem item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemOne,
                child: Text('Item 1'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemTwo,
                child: Text('Item 2'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemThree,
                child: Text('Item 3'),
              ),
            ],
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [const CreateHeaderCard(), Body(favoriteCallback: () {})],
          ),
          Positioned(
              top: 220,
              child: CreateButton(
                onTap: () {},
              ))
        ],
      ),
    );
  }
}
