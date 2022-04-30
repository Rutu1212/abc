import 'package:flutter/cupertino.dart';
import 'package:untitled/Widget/SingleProductWidget.dart';

import '../../../Data/CategoryData.dart';
import '../../../Rout/Rout.dart';
import '../../../Widget/ShowAll_widget.dart';
import '../../../modals/singalproductmodal.dart';
import '../../DetaileScreen/DetailScreen.dart';

class CatagoryAllTabbar extends StatelessWidget {
  Widget builderRender({required List<SingleProductModel> singleProduct}) {
    return Container(
      height: 250,
      child: GridView.builder(
        itemCount: singleProduct.length,
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.4,
        ),
        itemBuilder: (context, index) {
          var data = singleProduct[index];
          return SingleProductWidget(
              productImage: data.productImage,
              productName: data.productName,
              productModel: data.productModel,
              productPrice: data.productOldPrice,
              productOldPrice: data.productOldPrice,
              onPressed: () {
                RoutingPage.gotoNextPage(
                  context: context,
                  navigateTo: DetailScreen(data: data),
                );
              });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        ShowAllWidget(leftText: 'Clothing'),
        builderRender(singleProduct: categoryClothData),
        ShowAllWidget(leftText: 'Shoes'),
        builderRender(singleProduct: categoryShoesData),
        ShowAllWidget(leftText: 'Accessories'),
        builderRender(singleProduct: categoryAccessoriesData),
      ],
    );
  }
}
