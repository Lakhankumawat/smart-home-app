
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../../view/gallery_android.dart';
import '../../view/textform_field_view_model.dart';
import '../models/user_model.dart';
import '../screens/home_screen/home_screen.dart';
import 'login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final style = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);

  String? downloadUrl;

  bool? isObscured = true;

  final formkey = GlobalKey<FormState>();

  TextEditingController full_name = new TextEditingController();

  TextEditingController email = new TextEditingController();

  TextEditingController pass = new TextEditingController();

  TextEditingController confirm_pass = new TextEditingController();

  File? image;

  bool ispickedFile = false , isClicked = false;

  dynamic pickedFile;

  final user_instance = FirebaseAuth.instance;

  XFile? imageFile;

  Future StoreModelInFirestore() async {
    await FirebaseFirestore.instance.collection('users').doc(user_instance.currentUser!.uid).
    set(
      UserModel(
          email: email.text,
          uid: user_instance.currentUser!.uid,
          downloadUrl: this.downloadUrl,
          name: full_name.text).toMap()
    );

  }

  Future StoreImageInFirebaseStorage() async {
    final storage = FirebaseStorage.instance;
    final storageRef = storage.ref();
    final imagesRef = storageRef.child('${user_instance.currentUser!.uid}');
    await imagesRef.putFile(File(imageFile!.path)).whenComplete(
            () async =>
      await imagesRef.getDownloadURL().then((value) {
        setState((){
          downloadUrl = value.toString();
          print(downloadUrl);
          StoreModelInFirestore();
          Navigator.of(context).pushAndRemoveUntil
            (
              MaterialPageRoute(
                  builder : (context) => HomeScreen(uid: user_instance.currentUser!.uid,)
              ), (route) => false
          );
        });
      }
    ));

  }

  void AuthenticateFirebase() {
    try {
      if (formkey.currentState!.validate()) {
        log('clicked');
       user_instance.createUserWithEmailAndPassword(
            email: email.text,
            password: pass.text
        ).then((value) => StoreImageInFirebaseStorage());


      }
    } on FirebaseException catch(error){
      print(error.toString());
    }

  }

  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme:GoogleFonts.poppinsTextTheme()),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xffffffff),
        body: Padding(
          padding: EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 5),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
                    child: Text(
                      'Create New Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 35),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.center,
                        child: CircleAvatar(
                            backgroundImage: ispickedFile == true?
                          FileImage(File(imageFile!.path)):
                          AssetImage(
                              'assets/images/empty_avatar.png'
                          ) as ImageProvider ,
                          radius : 64,
                         ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(start:74),
                        child: Align(
                          alignment: AlignmentDirectional.bottomCenter,
                          child: IconButton(
                            onPressed: () async {
                              pickedFile = await openGallery(context);

                              setState(() {
                                imageFile = pickedFile;
                                ispickedFile = true;
                                print('Button Clicked');
                              });

                            },
                            icon: Stack(
                              alignment: AlignmentDirectional.bottomCenter,
                              children: [
                                CircleAvatar(
                                radius : 19,
                                backgroundColor:Colors.lightGreen,
                              ),
                                Text(
                                    '+',
                                    style:TextStyle(
                                        color: Colors.white,
                                        fontSize: 24
                                )
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]
                  ),
                  SizedBox(height:40),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextFormField(
                      validator: (value) {
                        if(value!.length < 3){
                          return 'Characters aren\'t long';
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      onChanged: (value) {
                        full_name.text = value;
                      },
                      decoration: textFormField(
                          hintText:'Full Name',
                          icon: Icon(Icons.person_outline, color: Colors.grey)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      validator : (value) =>
                      !value!.contains(RegExp(r'@([a-zA-Z0-9]+)\.[a-zA-z0-9_.+.]'))?"This isn\'t email":null,
                      style: TextStyle(color: Color(0xFFE7E8EA)),
                      onChanged: (value) {
                        email.text = value;
                      },
                      decoration: textFormField(
                          hintText:'Email',
                          icon: Icon(Icons.email_outlined, color: Colors.grey)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      validator: (value)=> value!.length <= 6 ?
                      'Password should be more than six characters':null,
                      obscureText:  isObscured!,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) => pass.text = value,
                      style: TextStyle(color: Color(0xFFE7E8EA)),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed :()=> setState(() => isObscured = !isObscured!),
                          icon: Icon(isObscured == false? Icons.remove_red_eye:
                          Icons.visibility_off_outlined, color: Colors.grey),
                        ) ,
                        fillColor: Color(0xff3b475a),
                        filled: true,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: Color(0xFFE7E8EA), fontWeight: FontWeight.w200),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      validator: (value)=> pass.text.compareTo(value!)!=0?
                        'Incorrect Password':null,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) => confirm_pass.text = value,
                      style: TextStyle(color: Color(0xFFE7E8EA)),
                      decoration: textFormField(
                          hintText:'Confirm Password',
                          icon: Container()
                      ),
                    ),
                  ),
                  !isClicked ?Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          12
                        ),
                        color: Colors.blue
                      ),
                      child: TextButton(
                        onPressed: () async {
                          setState((){
                            isClicked = true;
                            FocusScope.of(context).unfocus();
                            AuthenticateFirebase();
                          });
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ):Center(child: CircularProgressIndicator()),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left:62),
                    child: Row(
                      children: [
                        Text('Have an account?',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        InkWell(
                          onTap :() =>
                              Navigator.pushAndRemoveUntil(context,
                                  MaterialPageRoute(builder: (context) => LoginScreen())
                                  , (route) => false),
                          child: Text(' Sign In',
                              style: TextStyle(
                                  color: Color(0xFF0A0A09),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
