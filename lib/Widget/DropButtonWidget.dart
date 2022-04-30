import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/appColors/app_colors.dart';

import '../Styles/DetailScreenStylies.dart';

class DropButton extends StatefulWidget {
  late final String hintText;
  String? ratingController;
  final List<String> item;

  DropButton(
      {required this.hintText,
      required this.ratingController,
      required this.item});

  @override
  State<DropButton> createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          fillColor: AppColors.baseWhiteColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        hint: Text(
          '${widget.hintText}',
          style: DetailScreenStylies.productDropDownValuestyles,
        ),
        value: widget.ratingController,
        items: widget.item
            .map(
              (e) => DropdownMenuItem(child: Text(e), value: e),
            )
            .toList(),
        onChanged: (value) {
          setState(() {
            widget.ratingController = value!;
          });
        },
      ),
    );
  }
}
