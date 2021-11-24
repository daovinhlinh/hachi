import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hachi/pages/Overview/controller.dart';
import 'package:hachi/utils/styles.dart';
import 'package:hachi/utils/svg.dart';

class Overview extends StatelessWidget {
  Overview({Key? key}) : super(key: key);
  final OverviewController c = Get.put(OverviewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: theme.black80,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Tổng quan',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Bạn cần làm lại Căn Cước Công Dân',
                  style: TextStyle(
                      color: theme.darkBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic)),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: theme.black1,
                            border: Border.all(color: theme.black10, width: 1),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(SvgIcon.location),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Cơ quan',
                                      style: TextStyle(
                                          color: theme.darkBlue,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700)),
                                  const SizedBox(height: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Cục cảnh sát quản lý hành chính về trật tự xã hộissss',
                                          style: TextStyle(
                                              color: theme.black60,
                                              fontSize: 16)),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: theme.black1,
                            border: Border.all(color: theme.black10, width: 1),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(SvgIcon.creditCard),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Lệ phí',
                                      style: TextStyle(
                                          color: theme.darkBlue,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700)),
                                  const SizedBox(height: 5),
                                  Text('70.000 VNĐ',
                                      style: TextStyle(
                                          color: theme.black60, fontSize: 16)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: theme.black1,
                            border: Border.all(color: theme.black10, width: 1),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(SvgIcon.attach),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Giấy tờ cần',
                                      style: TextStyle(
                                          color: theme.darkBlue,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700)),
                                  const SizedBox(height: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('01 Tờ khai căn cước công dân',
                                          style: TextStyle(
                                              color: theme.black60,
                                              fontSize: 16)),
                                      const SizedBox(height: 5),
                                      Text('01 Sổ hộ khẩu',
                                          style: TextStyle(
                                              color: theme.black60,
                                              fontSize: 16)),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: theme.black1,
                            border: Border.all(color: theme.black10, width: 1),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(SvgIcon.stack3),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Tổng quát quy trình',
                                      style: TextStyle(
                                          color: theme.darkBlue,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700)),
                                  const SizedBox(height: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(SvgIcon.stack2,
                                              color: theme.green),
                                          const SizedBox(width: 5),
                                          Text('6 bước',
                                              style: TextStyle(
                                                  color: theme.green,
                                                  fontWeight: FontWeight.w700)),
                                          const SizedBox(width: 20),
                                          SvgPicture.asset(SvgIcon.clock,
                                              color: theme.green),
                                          const SizedBox(width: 5),
                                          Text('Ít hơn 15 ngày',
                                              style: TextStyle(
                                                  color: theme.green,
                                                  fontWeight: FontWeight.w700))
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Text('1. Điền tờ khai',
                                          style: TextStyle(
                                              color: theme.black60,
                                              fontSize: 16)),
                                      const SizedBox(height: 5),
                                      Text('2. Đối chiếu tờ khai',
                                          style: TextStyle(
                                              color: theme.black60,
                                              fontSize: 16)),
                                      const SizedBox(height: 5),
                                      Text('3. Lấy vân tay, chụp ảnh',
                                          style: TextStyle(
                                              color: theme.black60,
                                              fontSize: 16)),
                                      const SizedBox(height: 5),
                                      Text('4. Kiểm tra thông tin',
                                          style: TextStyle(
                                              color: theme.black60,
                                              fontSize: 16)),
                                      const SizedBox(height: 5),
                                      Text('5. Nộp lệ phí',
                                          style: TextStyle(
                                              color: theme.black60,
                                              fontSize: 16)),
                                      const SizedBox(height: 5),
                                      Text('6. Chờ kết quả',
                                          style: TextStyle(
                                              color: theme.black60,
                                              fontSize: 16)),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: theme.black1,
                              border:
                                  Border.all(color: theme.black10, width: 1),
                              borderRadius: BorderRadius.circular(6)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Đăng ký làm thủ tục',
                                  style: TextStyle(
                                      color: theme.yellow,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Obx(
                                    () => TextButton(
                                        style: ButtonStyle(
                                          padding: MaterialStateProperty.all(
                                              const EdgeInsets.symmetric(
                                                  vertical: 20,
                                                  horizontal: 30)),
                                          elevation:
                                              MaterialStateProperty.all(5),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  c.method.value == 1
                                                      ? theme.primary
                                                          .withOpacity(0.4)
                                                      : Colors.white),
                                        ),
                                        onPressed: () {
                                          c.method.value = 1;
                                        },
                                        child: Column(
                                          children: [
                                            Text('Online',
                                                style: TextStyle(
                                                    color: theme.neutral_2,
                                                    fontSize: 16)),
                                            Icon(Icons.link,
                                                color: theme.primary),
                                          ],
                                        )),
                                  ),
                                  Obx(
                                    () => TextButton(
                                        style: ButtonStyle(
                                          padding: MaterialStateProperty.all(
                                              const EdgeInsets.symmetric(
                                                  vertical: 20,
                                                  horizontal: 30)),
                                          elevation:
                                              MaterialStateProperty.all(5),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  c.method.value == 2
                                                      ? theme.primary
                                                          .withOpacity(0.4)
                                                      : Colors.white),
                                        ),
                                        onPressed: () {
                                          c.method.value = 2;
                                        },
                                        child: Column(
                                          children: [
                                            Text('Offline',
                                                style: TextStyle(
                                                    color: theme.neutral_2,
                                                    fontSize: 16)),
                                            Icon(Icons.link,
                                                color: theme.primary),
                                          ],
                                        )),
                                  )
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 16)),
                      backgroundColor:
                          MaterialStateProperty.all(theme.primary)),
                  onPressed: () {},
                  child: SizedBox(
                    width: Get.width,
                    child: const Text(
                      'Bắt đầu làm',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  )),
              const SizedBox(height: 15)
            ],
          ),
        ));
  }
}
