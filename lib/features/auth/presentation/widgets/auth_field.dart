
//reusable Widget
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  const AuthField ({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,  //since in this common widget the hintext is different only so we use define constructor.
      ),
    );  //entire signup page is a form

  }
}