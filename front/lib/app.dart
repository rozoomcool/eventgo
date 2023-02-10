import 'package:eventgo/Screens/login&registr/login.dart';
import 'package:eventgo/constants.dart';
import 'package:flutter/material.dart';

import 'Screens/login&registr/registration.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        useMaterial3: true,
      ),
      home: RegistrationPage(),
    );
  }
}
