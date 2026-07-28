import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  final isLoading = false.obs;
  final selectIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
    initialize();
  }

  Future<void> initialize() async {
    isLoading.value = true;
    await Future.delayed(const Duration(milliseconds: 500));
    isLoading.value = false;
  }

  void changeNavigation(int index) {
    selectIndex.value = index;
  }
}
