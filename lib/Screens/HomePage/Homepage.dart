import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/Screens/Clothing.dart';
import 'package:untitled/Screens/DetaileScreen/DetailScreen.dart';
import 'package:untitled/appColors/app_colors.dart';
import 'package:untitled/svg%20image/svg_image.dart';

import '../../Data/Home data.dart';
import '../../Rout/Rout.dart';
import '../../Styles/Home Screen stylies.dart';
import '../../Widget/ShowAll_widget.dart';
import '../../Widget/SingleProductWidget.dart';
import '../Accesories.dart';
import '../Shoes.dart';

class HomePage extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            'Welcome',
            style: HomeScreenStylies.appBaruppertitlestylies,
          ),
          Text(
            'Shopping',
            style: HomeScreenStylies.shoppingstylies,
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: RotationTransition(
              turns: AlwaysStoppedAnimation(90 / 360),
              child: SvgPicture.asset(
                SvgImages.filter,
                color: AppColors.baseBlackColor,
                width: 30,
              ),
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              SvgImages.search,
              color: AppColors.baseBlackColor,
              width: 30,
            )),
      ],
      bottom: TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(color: Colors.transparent),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text('All'),
          Text('Clothing'),
          Text('Shoes'),
          Text('Accesories'),
        ],
      ),
    );
  }

  Widget buildTradingProduct(
      {required String productImage,
      required String productName,
      required String productModel,
      required double productPrice}) {
    return Container(
      margin: EdgeInsets.only(top: 30, right: 20, left: 30, bottom: 20),
      height: 65,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Material(
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(productImage),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: HomeScreenStylies.tradingproductname,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    productModel,
                    style: HomeScreenStylies.tradingproductModel,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: MaterialButton(
              color: AppColors.baseLightPinkColor,
              height: 45,
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(0.7),
              ),
              onPressed: () {},
              child: Text(
                '\$ $productPrice',
                style: HomeScreenStylies.tradingproductprice,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: buildAppBar(),
          body: TabBarView(
            children: [
              ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 170,
                          width: double.infinity,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              enlargeCenterPage: true,
                              // enableInfiniteScroll: false,
                              autoPlay: true,
                            ),
                            items: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.network(
                                        'https://cdn.grabon.in/gograbon/images/web-images/uploads/1617875488697/clothing-offers.jpg',
                                        fit: BoxFit.fill),
                                  ],
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget> [
                                    Image.network(
                                        'https://cdn.static-zoutons.com/images/originals/coupon-category/1590588543281.jpg_1590588543.png',
                                        fit: BoxFit.fill),
                                  ],
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqgO6C7CLUFNPEFme6QARVdbLj8SBSKSGmUTC3x8nYzaeXu3EQxSS30ftMziNz0K7WWHc&usqp=CAU',
                                        fit: BoxFit.fill),
                                  ],
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_x0yJ2FDJcaA4G1_GBYusxjgY_8eSoJdFbdAuv43h10H91g_2QLPOBKOLVlEfCH5-ow8&usqp=CAU',
                                        fit: BoxFit.fill),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ), //CarouselSlider
                  ShowAllWidget(leftText: 'New Arrival'),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      primary: true,
                      itemCount: sigleProductData.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        var data = sigleProductData[index];
                        return SingleProductWidget(
                          onPressed: () {
                            RoutingPage.gotoNextPage(context: context, navigateTo: DetailScreen(data: data),);
                          },
                          productImage: data.productImage,
                          productModel: data.productModel,
                          productName: data.productName,
                          productOldPrice: data.productOldPrice,
                          productPrice: data.productPrice,
                        );
                      },
                    ),
                  ),
                  Divider(
                    indent: 16,
                    endIndent: 16,
                  ),
                  ShowAllWidget(leftText: 'What\'s tranding'),
                  Column(
                    children: [
                      buildTradingProduct(
                        productImage:
                            'https://5.imimg.com/data5/YY/VM/DS/SELLER-37440292/leather-ladies-purse-500x500.jpg',
                        productModel: 'Grey Leather',
                        productName: 'Sholder bag',
                        productPrice: 19.3,
                      ),
                      buildTradingProduct(
                        productImage:
                            'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/7c2fff38-9f89-40f1-bbcf-ffbfaab5adbc/wio-8-road-running-shoes-S6jPM3.png',
                        productModel: 'Winflo',
                        productName: 'Nike',
                        productPrice: 22.9,
                      ),
                      buildTradingProduct(
                        productImage:
                            'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_450,h_450/global/384639/04/sv01/fnd/IND/fmt/png/X-Ray-Speed-Lite-Men',
                        productModel: 'Court Rider 2X',
                        productName: 'Puma',
                        productPrice: 20.3,
                      ),
                      ShowAllWidget(leftText: 'History'),
                      Container(
                        height: 240,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          primary: true,
                          shrinkWrap: true,
                          itemCount: sigleProductData.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: 1.5,
                          ),
                          itemBuilder: (context, index) {
                            var data = sigleProductData[index];
                            return SingleProductWidget(
                              onPressed: () {
                                RoutingPage.gotoNextPage(context: context, navigateTo: DetailScreen(data: data),);
                              },
                              productImage: data.productImage,
                              productModel: data.productModel,
                              productName: data.productName,
                              productOldPrice: data.productOldPrice,
                              productPrice: data.productPrice,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              TabBarData(),
              ShoesData(),
              Accesories(),
            ],
          )),
    );
  }
}
