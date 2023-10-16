import 'package:get/get.dart';

class HomePageController extends GetxController {
  int counter = 0;
  static HomePageController get to => Get.find(); // add this line

  increment() {
    update(['text'], counter > 0);
    counter += 1;
  }

  @override
  void onInit() {
    // Fetch The API
    super.onInit();
  }
}
