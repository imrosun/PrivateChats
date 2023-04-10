import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Frontend/AuthUI/signUp.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'droame',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: SignUpScreen(),
    ),
  );
}
