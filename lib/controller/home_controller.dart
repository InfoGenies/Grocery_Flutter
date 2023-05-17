import 'package:get/get.dart';
import 'package:grocery_app/model/ad_banner.dart';
import 'package:grocery_app/model/category.dart';
import 'package:grocery_app/model/product.dart';
import 'package:grocery_app/service/local_servvice/local_ad_banner_service.dart';
import 'package:grocery_app/service/local_servvice/local_category_service.dart';
import 'package:grocery_app/service/local_servvice/local_product_service.dart';
import 'package:grocery_app/service/remote_service/remote_banner_service.dart';
import 'package:grocery_app/service/remote_service/remote_popular_category_service.dart';
import 'package:grocery_app/service/remote_service/remote_popular_product_service.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  RxList<AdBanner> bannerList = List<AdBanner>.empty(growable: true).obs;
  RxList<Category> popularCategoryList =
      List<Category>.empty(growable: true).obs;

  RxList<Product> popularProductList = List<Product>.empty(growable: true).obs;

  RxBool isBannerLoading = false.obs;
  RxBool isPopularCategoryLoading = false.obs;
  RxBool isPopularProductLoading = false.obs;

  final LocalAdBannerService _localAdBannerService = LocalAdBannerService();
  final LocalCategoryService _localCategoryService = LocalCategoryService();
  final LocalProductService _localProductService = LocalProductService();

  @override
  void onInit() async {
    await _localAdBannerService.init();
    await _localCategoryService.init();
    await _localProductService.init();
    getAdBanners();
    getCategory();
    getPopularProduct();
    super.onInit();
  }

  void getAdBanners() async {
    try {
      isBannerLoading(true);
      //assigning local ad banners before call api
      if (_localAdBannerService.getAdBanners().isNotEmpty) {
        bannerList.assignAll(_localAdBannerService.getAdBanners());
      }
      //call api
      var result = await RemoteBannerService().get();
     // print("the result of get banner is ${result.body}");
      if (result != null) {
        //assign api result
        bannerList.assignAll(adBannerListFromJson(result.body));
        //save api result to local db
        _localAdBannerService.assignAllAdBanners(
            adBanners: adBannerListFromJson(result.body));
      }
      // print("la taille de banner est ${_localAdBannerService.getAdBanners().length}");

    } catch (e) {
         //print("the error was in $e");
    } finally {
      isBannerLoading(false);
    }
  }

  void getCategory() async {
    try {

      isPopularCategoryLoading(true);
      //assigning local popularCategorie before call api
      if (_localCategoryService.getPopularCategories().isNotEmpty) {
        popularCategoryList
            .assignAll(_localCategoryService.getPopularCategories());
      }
      //call api
      var result = await RemotePopularCategoryService().get();

      if (result != null) {
        //assign api result
        popularCategoryList.assignAll(popularCategoryListFromJson(result.body));
        //save api result to local db
        _localCategoryService.assignAllPopularCategories(
            popularCategories: popularCategoryListFromJson(result.body));
      }
    } catch (e) {
      //print("the error was in $e");
    } finally {
      isPopularCategoryLoading(false);
    }
  }

  void getPopularProduct() async {
    try {
      isPopularProductLoading(true);
       if (_localProductService
          .getPopularProducts()
          .isNotEmpty) {
        popularProductList
            .assignAll(_localProductService.getPopularProducts());
      }
      //call api
      var result = await RemotePopularProductService().get();
      //   print("the result of popular controller is  ${result.body}");
      if (result != null) {
        //assign api result
            popularProductList.assignAll(popularProductListFromJson(result.body));
        //save api result to local db
          _localProductService.assignAllPopularProducts(
            products: popularProductListFromJson(result.body));
      }
    } catch (e) {
      // print("the error was in $e");

    } finally {
      isPopularProductLoading(false);
    }
  }
}
