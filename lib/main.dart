import 'package:flutter/material.dart';
import 'package:ui_screens/modules/basics_app/home/home_screen.dart';
import 'package:ui_screens/modules/basics_app/login/login_screen.dart';
import 'package:ui_screens/modules/basics_app/messenger/messenger_screen.dart';
import 'package:ui_screens/modules/basics_app/messenger/messenger_screen2.dart';
import 'package:ui_screens/modules/basics_app/users/users_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(Object context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_Screen(),
    );
  }
}
