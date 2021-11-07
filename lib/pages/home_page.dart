import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';


class Homepage extends StatelessWidget {
  final int day = 30;
  final String show = "hello";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yash Sherla"),
      ),
      body: Center(
        child: Container(
          child: Text(" Welcome $show  Guys $day day "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
