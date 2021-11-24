import 'package:get/get.dart';

class ProgressHistoryController extends GetxController {
  late final RxInt tab;

  @override
  void onInit() {
    tab = RxInt(1);
    super.onInit();
  }
}
