import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "codepur";
    return Scaffold(
      appBar: AppBar(
        title: Text("First APP"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $days flutter $name "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
