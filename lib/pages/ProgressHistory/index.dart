import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hachi/pages/ProgressHistory/controller.dart';
import 'package:hachi/utils/styles.dart';
import 'package:hachi/utils/svg.dart';

final List<Map<String, dynamic>> job = [
  {
    'title': 'Làm lại căn cước công dân',
    'subTitle': 'Đang đăng kí làm thủ tục',
    'time': '10h trước',
    'currentStep': 2,
    'totalStep': 5,
  },
  {
    'title': 'Làm giấy tờ tuỳ thân',
    'subTitle': 'Đang chuẩn bị đến cơ quan làm việc',
    'time': '2 tuần trước ',
    'currentStep': 3,
    'totalStep': 4,
  },
  {
    'title': 'Làm giấy tờ y tế',
    'subTitle': 'Đang chờ kết quả',
    'time': '1 tháng trước',
    'currentStep': 5,
    'totalStep': 6,
  },
];

class ProgressHistory extends StatelessWidget {
  const ProgressHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ProgressHistoryController c = Get.put(ProgressHistoryController());
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Tiến độ',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(SvgIcon.progress),
                  const SizedBox(height: 10),
                  Text('Nhật ký thủ tục',
                      style: TextStyle(
                          color: theme.neutral_2,
                          fontSize: 32,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 50),
                  Container(
                      decoration: BoxDecoration(
                          color: theme.neutral_1,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Obx(
                        () => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                c.tab.value = 1;
                              },
                              child: Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  color: c.tab.value == 1 ? Colors.white : null,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text('Đang làm',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: c.tab.value == 1
                                            ? theme.neutral_2
                                            : theme.neutral_3)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                c.tab.value = 2;
                              },
                              child: Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  color: c.tab.value == 2 ? Colors.white : null,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text('Đã làm',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: c.tab.value == 2
                                            ? theme.neutral_2
                                            : theme.neutral_3)),
                              ),
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(height: 30),
                  Expanded(
                      child: ListView.builder(
                          itemCount: job.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: theme.red,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Wrap(children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  job[index]['title']!,
                                                  style: TextStyle(
                                                      color: theme.neutral_2,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  job[index]['time']!,
                                                  style: TextStyle(
                                                      color: theme.neutral_3,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ]),
                                          const SizedBox(height: 5),
                                          Text(
                                            job[index]['subTitle']!,
                                            style: TextStyle(
                                                color: theme.neutral_2,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const SizedBox(height: 5),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              'Bước ${job[index]['currentStep']}/${job[index]['totalStep']} ',
                                              style: TextStyle(
                                                  color: theme.neutral_7,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          LinearProgressIndicator(
                                            value: job[index]['currentStep'] /
                                                job[index]['totalStep'],
                                            minHeight: 6,
                                            backgroundColor: theme.primary100,
                                            color: theme.red,
                                          ),
                                          const Divider(),
                                        ],
                                      ),
                                    ),
                                  ]),
                            );
                          })),
                ],
              )),
        ));
  }
}
