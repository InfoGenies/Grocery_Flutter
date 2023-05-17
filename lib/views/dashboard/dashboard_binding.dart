
import 'package:get/get.dart';
import 'package:grocery_app/controller/dashboard_controller.dart';
import 'package:grocery_app/controller/home_controller.dart';
import 'package:grocery_app/controller/product_controller.dart';



class DashboarBindng extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DashboardController()) ;
    Get.put(HomeController());
    Get.put(ProductController());


  }

}