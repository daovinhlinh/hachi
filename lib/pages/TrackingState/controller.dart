import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class TrackingStateController extends GetxController {
  late final RxInt method;
  late final GlobalKey<FormBuilderState> formKey;
  late final ExpandableController controller1;
  late final ExpandableController controller2;
  late final ExpandableController controller3;
  late final ExpandableController controller4;

  @override
  void onInit() {
    formKey = GlobalKey<FormBuilderState>();
    controller1 = ExpandableController();
    controller2 = ExpandableController();
    controller3 = ExpandableController();
    controller4 = ExpandableController();
    method = RxInt(-1);
    super.onInit();
  }
}
