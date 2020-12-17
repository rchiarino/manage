import 'package:flutter/material.dart';
import 'components/body.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: buildAppBar(context),
      body: Body(),
    );
  }

AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Center(
            child: Text(
              "Scanned Elements",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
  
}
