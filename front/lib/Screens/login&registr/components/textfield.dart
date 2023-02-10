import 'package:eventgo/Screens/login&registr/components/textfield_container.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Icon icon;
  TextFieldWidget({
    super.key,
    this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          icon: icon,
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
