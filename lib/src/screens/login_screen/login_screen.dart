import 'package:domus/src/screens/login_screen/components/body.dart';
import 'package:flutter/material.dart';

class LoginScreen  extends StatelessWidget {
	static String routeName = '/login-screen';
	const LoginScreen({Key? key}) : super(key: key);

	@override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset:false,
	    body: Body(),
    );
  }
}
