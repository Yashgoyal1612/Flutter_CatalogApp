import 'package:catalog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Hacker";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        child: Text("Welcome $days $name"),
      )),
      // drawer: MyDrawer(),
      drawer: MyDrawer(),
    );
  }
}
