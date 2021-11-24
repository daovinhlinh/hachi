import 'package:get/get.dart';

class HomepageController extends GetxController {
  late final RxInt radioValue;

  @override
  void onInit() {
    radioValue = RxInt(1);
    super.onInit();
  }
}
