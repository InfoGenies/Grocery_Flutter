import 'package:get/get.dart';
import 'package:grocery_app/views/dashboard/dashboard_binding.dart';


import '../views/dashboard/dashboard_screen.dart';
import 'app_route.dart';

class AppPage {
  static var list = [
    GetPage(
        name: AppRoute.dashboard,
        page: () => const DashboardScreen(),
        binding: DashboarBindng())
  ];
}
