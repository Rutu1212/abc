import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyButtonWidget extends StatelessWidget {

  late final String text;
  late final Color color;
  final VoidCallback onPress;
  MyButtonWidget({required this.text,required this.color,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: color,
        height: 45,
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        onPressed: onPress,
        child:
            Text(text, style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    );
  }
}
