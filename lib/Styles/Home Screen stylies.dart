import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/appColors/app_colors.dart';

class HomeScreenStylies {
  static const TextStyle appBaruppertitlestylies = TextStyle(
      color: AppColors.baseBlackColor,
      fontWeight: FontWeight.bold,
      fontSize: 25);
  static const TextStyle shoppingstylies = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  static const TextStyle tradingproductname = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const TextStyle tradingproductModel = TextStyle(
    fontSize: 14,
    color: AppColors.baseDarkPinkColor,
  );
  static const TextStyle tradingproductprice = TextStyle(
    fontSize: 18,
    color: AppColors.baseWhiteColor,
  );
}
