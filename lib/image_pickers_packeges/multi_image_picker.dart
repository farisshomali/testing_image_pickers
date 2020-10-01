import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class FirstPackage extends StatefulWidget {
  @override
  _FirstPackageState createState() => _FirstPackageState();
}

class _FirstPackageState extends State<FirstPackage> {
  List<Asset> images = List<Asset>();
  String _error = "No Error Detected";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text("Try our fast image picker"),
            ),
            RaisedButton(
              child: Text("Pick Images"),
              onPressed: loadAsset,
            ),
            Expanded(
              child: buildGridView(),
            )
          ],
        ),
      ),
    );
  }

  Widget buildGridView() {
    return GridView.count(
        crossAxisCount: 3,
        children: List.generate(images.length, (index) {
          Asset asset = images[index];
          return AssetThumb(asset: asset, width: 300, height: 300);
        }));
  }

  Future<void> loadAsset() async {
    List<Asset> resultList = List<Asset>();
    String error = "No Error Detected";
    try {
      /// ana 7atetha hek ya 7asan 300 sora , 3ade btt3'yar.
      resultList = await MultiImagePicker.pickImages(
        maxImages: 40,
        enableCamera: false,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }
    if (!mounted) return;
    setState(() {
      images = resultList;
      _error = error;
    });
  }
}
