import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';

import 'common_auth_methods.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromRGBO(34, 48, 68, 1),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height: 50.0),
            Center(
              child: Text(
                'Log In',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 60.0, bottom: 10.0),
              child: Form(
                // key: this._signUpKey,
                child: ListView(
                  children: [
                    commonTextFormField(hintText: 'Email'),
                    commonTextFormField(hintText: 'Password'),
                    authButton(context, 'Log In'),
                  ],
                ),
              ),
            ),
            Center(
              child: Text(
                'Or continue with',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            socialMediaIntegrationButtons(),
            switchAnotherAuthScreen(
                context, "Don't have an account? ", "Sign-Up"),
          ],
        ),
      ),
    ));
  }
}
