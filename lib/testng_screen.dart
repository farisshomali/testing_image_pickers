import 'package:flutter/material.dart';
import 'package:testing_image_pickers/image_pickers_packeges/multi_image_picker.dart';

class TestingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Image Picking")),
      body: FirstPackage(),
    ));
  }
}
