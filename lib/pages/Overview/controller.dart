import 'package:get/get.dart';

class OverviewController extends GetxController {
  late final RxInt method;

  @override
  void onInit() {
    method = RxInt(-1);
    super.onInit();
  }
}
