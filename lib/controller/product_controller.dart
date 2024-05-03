import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  bool isClickForMore = false;

  bool isAdded = false;
  String addToCartText = 'Add To Cart';
  Color addToCartColor =Colors.blue.shade900;
  double widthContanerAddToCart = 105;

  void clickForMore() {
    isClickForMore = !isClickForMore;
    update();
  }

  void addToCartContaner(){
    isAdded = !isAdded;
    if(isAdded){
      addToCartText = 'Done';
      addToCartColor = Colors.green.shade900;
      widthContanerAddToCart = 65;
    }else{
      addToCartText = 'Add To Cart';
      addToCartColor = Colors.blue.shade900;
      widthContanerAddToCart = 105;
    }
    update();

  }
}
