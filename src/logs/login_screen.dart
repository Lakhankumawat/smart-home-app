import 'package:domus/src/logs/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme:GoogleFonts.poppinsTextTheme()) ,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Smart home app",style: GoogleFonts.poppins(
              color: Colors.black,fontSize: 19
          )),
            elevation: 0
        ),
        body:  Column(
            children: [
              Expanded(
        child: Container(
          decoration:  BoxDecoration(color: Colors.grey[50],
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(50) , topRight: Radius.circular(50) )),
          padding: const EdgeInsets.only(left: 40,top: 20,bottom: 20,right: 40),
          child:Column(
            // ignore: prefer_const_literals_to_create_immutables
            children:  [
              Text("Login into our Smart Home App",style: TextStyle(
                fontSize: 20
              )),
              TextFormField(
                style: const TextStyle(fontSize: 20,color: Color.fromRGBO(23, 87, 122,1)),
                keyboardType: TextInputType.text,
                decoration:  const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,),),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                style: const TextStyle(fontSize: 20,color: Color.fromRGBO(23, 87, 122,1)),
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock_rounded),

                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Material(
                  borderRadius:BorderRadius.circular(50) ,
                  color:const Color.fromRGBO(23, 87, 122,0.85),
                  child: InkWell(
                    borderRadius:BorderRadius.circular(50) ,
                    onTap: (){

                    },
                    splashColor: const Color.fromRGBO(128, 237, 153, 1),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical:15.0, horizontal: 80),
                      child: Text("Log In",style: TextStyle(fontSize: 20, color: Colors.white),),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account yet? "),
                  InkWell(
                    borderRadius:BorderRadius.circular(50) ,
                    child: const Text("Sign Up", style: TextStyle(color: Color.fromRGBO(23, 87, 122,1)), ),
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)
                          => RegisterScreen()
                      ) , (route) => false);
                    },
                  ),
                ],
              ),
              SizedBox(height:31),
            ],
          ),
        )
              )
            ]
        )
      )
    );
  }
}