import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/appColors/app_colors.dart';
import 'package:untitled/svg%20image/svg_image.dart';

import '../../Data/CategoryData.dart';
import '../../Styles/CatagoryScreen stylies.dart';
import 'CatagoryTabBar/CatagoryAll.dart';
import 'CatagoryTabBar/CatagoryMen.dart';

class CatagoryScreen extends StatefulWidget {

  @override
  State<CatagoryScreen> createState() => _CatagoryScreenState();
}

class _CatagoryScreenState extends State<CatagoryScreen> {
  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Welcome',
        style: CatagoryScreenStylies.catagoryAppbarTitlestylies,
      ),
      actions: [
        RotationTransition(
          turns: AlwaysStoppedAnimation(90 / 360),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              SvgImages.filter,
              color: AppColors.baseBlackColor,
              width: 35,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.search,
            color: AppColors.baseBlackColor,
            width: 35,
          ),
        ),
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
      bottom: TabBar(
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        automaticIndicatorColorAdjustment: false,
        tabs: [
          Text('All'),
          Text('Men'),
          Text('Woman'),
          Text('Kid'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.baseWhiteColor,
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            //All
            CatagoryAllTabbar(),
            //Men
            CatagoryMen(categoryProductModel: menCategoryData),
            //Woman
            CatagoryMen(categoryProductModel: womenCategoryData),
            //Kids
            CatagoryMen(categoryProductModel: forKids),
          ],
        ),
      ),
    );
  }
}
