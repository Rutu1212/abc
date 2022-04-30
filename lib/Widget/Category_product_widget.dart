import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/appColors/app_colors.dart';

import '../Styles/CatagoryScreen stylies.dart';

class CategoryProducrWidget extends StatelessWidget {
  late final VoidCallback  onPressed;
  late final String productImage;
  late final String productName;
  late final String productModel;

  CategoryProducrWidget(
      {required this.productModel,
      required this.productName,
      required this.productImage,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 10, right: 20, bottom: 20),
        height: 80,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(productImage),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: CatagoryScreenStylies.catagoryProductNamestylies,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    productModel,
                    style: CatagoryScreenStylies.catagoryProductModeltsylies,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.baseBlackColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
