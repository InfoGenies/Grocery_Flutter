
import 'package:get/get.dart';

class DashboardController extends GetxController {
 // DashboardController instance = Get.find();
  var tabIndex = 0 ;
  void updateIndex(int index){
    tabIndex =  index ;
    update() ;
  }
}