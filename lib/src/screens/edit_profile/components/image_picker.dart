import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  // Future getImageFromCamera() async {
  //   var image = await _picker.pickImage(source: ImageSource.camera);
  //   setState(() {
  //     imagePath = image as File?;
  //   });
  // }

  Future getImageFromGallery() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          boxShadow: [
            BoxShadow(spreadRadius: 6, color: Colors.black38),
          ]),
      child: _image == null
          ? IconButton(
              icon: const Icon(
                Icons.upload_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                getImageFromGallery();
                // Save Image to some storage
              },
            )
          : InkWell(
              onTap: () {
                getImageFromGallery();
              },
              child: ClipRRect(
                child: Image.file(
                  _image!,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(35),
              ),
            ),
    );
  }
}
