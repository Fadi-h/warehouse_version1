import 'package:flutter/material.dart';
import 'package:warehouse_version1/controller/intro_controller.dart';

class IntroScreen extends StatelessWidget {

   IntroController introController = IntroController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.red,
      ),
    );
  }
}
