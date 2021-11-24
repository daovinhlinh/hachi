import 'package:get/get.dart';

class HomeController extends GetxController {
  late final RxInt selectedPage;

  @override
  void onInit() {
    selectedPage = RxInt(0);
    super.onInit();
  }

  void changePage(int index) {
    selectedPage.value = index;
    update();
  }
}
