import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextFromField extends StatelessWidget {
  late final String hintText;
  bool obscureText = false;

  MyTextFromField({required this.hintText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade100,
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
          )),
    );
  }
}
