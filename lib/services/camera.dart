import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';


class TakePhoto extends StatefulWidget {

  TakePhoto(ImageSource source);

  @override
  _TakePhotoState createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {

  late PickedFile imageFile;
  final ImagePicker picker = ImagePicker();

  void takePhoto(ImageSource source) async {
    final pickedFile = await picker.getImage(
        source: source
    );
    setState(() {
      imageFile = pickedFile!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




