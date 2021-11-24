import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hachi/pages/Homepage/controller.dart';
import 'package:hachi/routes.dart';
import 'package:hachi/utils/styles.dart';
import 'package:hachi/utils/svg.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);
  final HomepageController c = Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(color: theme.black80),
        ),
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Chào Nam!',
                      style: TextStyle(
                          color: theme.darkBlue,
                          fontSize: 22,
                          fontWeight: FontWeight.w700)),
                  Text('Hôm nay bạn cần giúp với thủ tục gì?',
                      style: TextStyle(color: theme.black70, fontSize: 16)),
                  const SizedBox(height: 40),
                  SvgPicture.asset(SvgIcon.questionHuman),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: theme.primary),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Obx(() => ListTile(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        bottomLeft: Radius.circular(6))),
                                selectedTileColor:
                                    theme.primary.withOpacity(0.1),
                                selected: c.radioValue.value == 1,
                                title: Text('Tôi đã',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: c.radioValue.value == 1
                                            ? theme.primary
                                            : theme.neutral_3)),
                                leading: Radio(
                                  value: 1,
                                  groupValue: c.radioValue.value,
                                  onChanged: (int? value) {
                                    c.radioValue.value = value!;
                                  },
                                ),
                              )),
                        ),
                        Flexible(
                          flex: 1,
                          child: Obx(() => ListTile(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8))),
                                selectedTileColor: Colors.red,
                                selected: c.radioValue.value == 2,
                                title: Text('Tôi muốn',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: c.radioValue.value == 2
                                            ? theme.primary
                                            : theme.neutral_3)),
                                leading: Radio(
                                  value: 2,
                                  groupValue: c.radioValue.value,
                                  onChanged: (int? value) {
                                    c.radioValue.value = value!;
                                  },
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Obx(
                    () => TextField(
                      style: TextStyle(color: theme.black80, fontSize: 14),
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.overview);
                          },
                          child: Material(
                            color: theme.primary,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(6),
                                bottomRight: Radius.circular(6)),
                            child: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                        hintText: c.radioValue.value == 1
                            ? 'Ví dụ: Mất thẻ BHYT'
                            : 'Ví dụ: Làm lại thẻ BHYT',
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
