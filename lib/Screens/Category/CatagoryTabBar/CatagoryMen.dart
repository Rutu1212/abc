import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Data/CategoryData.dart';
import 'package:untitled/Data/Home%20data.dart';
import 'package:untitled/Screens/Accesories.dart';
import 'package:untitled/Screens/Category/Subcategory.dart';

import '../../../Rout/Rout.dart';
import '../../../Widget/Category_product_widget.dart';
import '../../../modals/catagoryproductmodel.dart';

class CatagoryMen extends StatelessWidget {
  List<CategoryProductModel> categoryProductModel = [];

  CatagoryMen({required this.categoryProductModel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: categoryProductModel.length,
      itemBuilder: (context, index) {
        var data = categoryProductModel[index];
        return CategoryProducrWidget(
          onPressed: () {
            if (index == 0) {
              RoutingPage.gotoNextPage(
                context: context,
                navigateTo: SubCategory(
                  productName: categoryProductModel[index].productName,
                  productData: colothsData,
                  productModel: menCategoryData[index].productModel,
                ),
              );
            }
            else if(index==1){
              RoutingPage.gotoNextPage(
                context: context,
                navigateTo: SubCategory(
                  productName: shoesData[index].productName,
                  productData: shoesData,
                  productModel: menCategoryData[index].productModel,
                ),
              );
            }
            else if(index==2){
              RoutingPage.gotoNextPage(
                context: context,
                navigateTo: SubCategory(
                  productName: accessoriesData[index].productName,
                  productData: accessoriesData,
                  productModel: menCategoryData[index].productModel,
                ),
              );
            }
            else if(index==3){
              RoutingPage.gotoNextPage(
                context: context,
                navigateTo: SubCategory(
                  productName: accessoriesData[index].productName,
                  productData: accessoriesData,
                  productModel: menCategoryData[index].productModel,
                ),
              );
            }
            else if(index==4){
              RoutingPage.gotoNextPage(
                context: context,
                navigateTo: SubCategory(
                  productName: accessoriesData[index].productName,
                  productData: accessoriesData,
                  productModel: menCategoryData[index].productModel,
                ),
              );
            }
          },
          productImage: data.productImage,
          productName: data.productName,
          productModel: data.productModel,
        );
      },
    );
  }
}

// RoutingPage.gotoNextPage(
// context: context,
// navigateTo: DetailScreen(data: data),
// );
