import 'package:flutter/material.dart';
import 'package:image/image.dart' as imglib;

class ImagePreview extends StatelessWidget {

  final imglib.Image img;

  const ImagePreview({Key key, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preview Image"),
      ),
      body: Center(
        child: Image.memory(imglib.encodeJpg(img))
      ),
    );
  }
}

