import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:grocery_app/model/product.dart';
import 'package:grocery_app/service/remote_service/remote_product_service.dart';

class ProductController extends GetxController {
  static ProductController instance = Get.find();
  TextEditingController searchTextEditController = TextEditingController();
  RxList<Product> productList = List<Product>.empty(growable: true).obs;

  RxString searchVal = ''.obs;
  RxBool isProductLoading = false.obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  void getProducts() async {
    try {
     //print("getProducts is running");
      isProductLoading(true);
      var result = await RemoteProductService().get();
    //  print("the result of product liste is ${result.body}");
      if (result != null) {
        productList.assignAll(productListFromJson(result.body));
      }

    }catch(e){
     // print("the error was in $e ");

    } finally {
      isProductLoading(false);

    }
  }

  void getProductByName({required String keyword}) async {
    try {
      isProductLoading(true);
      var result = await RemoteProductService().getByName(keyword: keyword);
      if (result != null) {
        productList.assignAll(productListFromJson(result.body));
      }
    } finally {
      isProductLoading(false);
      //print(productList.length);
    }
  }
}
