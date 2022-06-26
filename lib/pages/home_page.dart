import 'package:catalog_app/model/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Hacker";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
