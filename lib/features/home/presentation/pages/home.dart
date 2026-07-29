import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:travel_india/features/home/presentation/controllers/home_controller.dart';
import 'package:travel_india/features/home/presentation/sections/hero/hero_section.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return const CustomScrollView(
          slivers: [SliverToBoxAdapter(child: HeroSection())],
        );
      }),
    );
  }
}
