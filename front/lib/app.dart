import 'package:eventgo/Screens/login/login.dart';
import 'package:eventgo/constants.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
