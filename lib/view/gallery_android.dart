import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

Future<XFile?> openGallery(BuildContext context) async{
  final pickedFile = await ImagePicker()
      .pickImage(source: ImageSource.gallery);

  return pickedFile;
}