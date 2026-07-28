import 'package:get/get.dart';
import 'package:travel_india/app/routes/app_routes.dart';
import 'package:travel_india/features/home/presentation/bindings/home_binding.dart';
import 'package:travel_india/features/home/presentation/pages/home.dart';

class AppPages {
  AppPages._();
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
