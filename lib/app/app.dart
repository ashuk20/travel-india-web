import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:travel_india/app/routes/app_pages.dart';
import 'package:travel_india/app/routes/app_routes.dart';
import 'package:travel_india/app/theme/app_theme.dart';

class TravelIndiaApp extends StatelessWidget {
  const TravelIndiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Travel India",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
    );
  }
}
