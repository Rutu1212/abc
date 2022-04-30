import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/appColors/app_colors.dart';
import 'package:untitled/svg%20image/svg_image.dart';

import '../../Data/DetailScreenData.dart';
import '../../Rout/Rout.dart';
import '../../Styles/DetailScreenStylies.dart';
import '../../Widget/DropButtonWidget.dart';
import '../../Widget/SingleProductWidget.dart';
import '../../modals/singalproductmodal.dart';

class DetailScreen extends StatefulWidget {
  late SingleProductModel data;

  DetailScreen({required this.data});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String? _ratingcontroller;
  String? _SizeController;

  PreferredSize buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Reebok',
          style: TextStyle(color: AppColors.baseBlackColor, fontSize: 23),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              SvgImages.heart,
              color: AppColors.baseBlackColor,
              width: 35,
              semanticsLabel: 'Fave',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              SvgImages.upload,
              color: AppColors.baseBlackColor,
              width: 35,
              semanticsLabel: 'Fave',
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 35,
              backgroundImage: AssetImage(
                'Photo/Logo.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productName,
                  style: DetailScreenStylies.companytitlestyles,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.productModel,
                  style: DetailScreenStylies.productmodeltitlestyles,
                ),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productPrice.toString(),
                  style: DetailScreenStylies.productpricestyles,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.productOldPrice.toString(),
                  style: DetailScreenStylies.productpriceOldstyles,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.data.productImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.productSecondImage,
                            fit: BoxFit.cover),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.productThirdImage,
                            fit: BoxFit.cover),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.productFourImage,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: DropButton(
                  hintText: 'Color',
                  item: ['Red', 'Blue', 'White', 'Black', 'Pink'],
                  ratingController: _ratingcontroller,
                ),
              ),
              Expanded(
                child: DropButton(
                  hintText: 'Size',
                  item: ['25', '30', '35', '40', '45'],
                  ratingController: _SizeController,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: MaterialButton(
              elevation: 0,
              height: 50,
              color: AppColors.baseDarkGreenColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide.none,
              ),
              onPressed: () {},
              child: Text(
                'Add to Cart',
                style: DetailScreenStylies.addToCartstyles,
              ),
            ),
          ),
          ExpansionTile(
            title: Text(
              'Description',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.baseBlackColor),
            ),
            children: [
              ListTile(
                title: Wrap(
                  children: [
                    Text(
                      'A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture, with form originally being tied to function.',
                      style: TextStyle(fontSize: 16),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '.\t\tMaterial',
                              style: TextStyle(fontSize: 18.60),
                            ),
                            Text(
                              '84%\tnylon \n16% elastance',
                              style: TextStyle(fontSize: 18.60),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '.\t\tSize',
                              style: TextStyle(fontSize: 18.60),
                            ),
                            Text(
                              '2XS,\tXs,\tS,\tM,\tL,\tXL',
                              style: TextStyle(fontSize: 18.60),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '.\t\tGender',
                              style: TextStyle(fontSize: 18.60),
                            ),
                            Text(
                              'Woman',
                              style: TextStyle(fontSize: 18.60),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '.\t\tProvince',
                              style: TextStyle(fontSize: 18.60),
                            ),
                            Text(
                              'India',
                              style: TextStyle(fontSize: 18.60),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '.\t\tCountry',
                              style: TextStyle(fontSize: 18.60),
                            ),
                            Text(
                              'India',
                              style: TextStyle(fontSize: 18.60),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          height: 55,
                          elevation: 0,
                          child: Text('Size Guide',
                              style: DetailScreenStylies.sizegruidestyles),
                          minWidth: double.infinity,
                          color: AppColors.basewhite60Color,
                          onPressed: () {

                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListTile(
            leading: Text(
              'You May also Like',
              style: DetailScreenStylies.youMayalsoLikeTextStyle,
            ),
            trailing: Text(
              'Show All',
              style: DetailScreenStylies.showAll,
            ),
          ),
          Container(
            height: 240,
             child: GridView.builder(
               scrollDirection: Axis.horizontal,
               shrinkWrap: true,
               primary: true,
               itemCount: detailScreenData.length,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 1,
                 childAspectRatio: 1.5,
               ),
               itemBuilder: (context, index) {
                 var data = detailScreenData[index];
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
          )
        ],
      ),
    );
  }
}
