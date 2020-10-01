import 'package:flutter/material.dart';
import 'package:testing_image_pickers/image_pickers_packeges/multi_image_picker.dart';
import 'package:testing_image_pickers/testng_screen.dart';

void main() => runApp(ImagePicking());

class ImagePicking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     debugShowCheckedModeBanner: false,
      home: TestingScreen()
    );
  }
}
