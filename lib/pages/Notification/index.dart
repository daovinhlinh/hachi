import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hachi/utils/styles.dart';
import 'package:hachi/utils/svg.dart';

class Notification extends StatelessWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Thông báo',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Quan trọng',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: theme.red1)),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(SvgIcon.notification),
                      const SizedBox(width: 25),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text('Giấy tờ sắp hết hạn',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: theme.neutral_2)),
                                ),
                                Text('8m ago',
                                    style: TextStyle(color: theme.neutral_3)),
                              ],
                            ),
                            const SizedBox(height: 3),
                            Text('Cần làm lại trước ngày 20/10/21',
                                style: TextStyle(color: theme.neutral_2)),
                            const SizedBox(height: 20),
                            const Divider(
                              thickness: 1,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Sắp tới',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: theme.green)),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(SvgIcon.calendar),
                      const SizedBox(width: 25),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text('Đi làm lại CCCD',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: theme.neutral_2)),
                                ),
                                Text('8m ago',
                                    style: TextStyle(color: theme.neutral_3)),
                              ],
                            ),
                            const SizedBox(height: 3),
                            Text('Lịch 20/10/21 | Địa điểm: Bộ Công An',
                                style: TextStyle(color: theme.neutral_2)),
                            const SizedBox(height: 20),
                            const Divider(
                              thickness: 1,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text('Cân nhắc',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: theme.primary)),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(SvgIcon.file),
                      const SizedBox(width: 25),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text('Điền lại thông tin BHYT',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: theme.neutral_2)),
                                ),
                                Text('8m ago',
                                    style: TextStyle(color: theme.neutral_3)),
                              ],
                            ),
                            const SizedBox(height: 3),
                            Text('Thông tin về địa chỉ thường trú cần cập nhật',
                                style: TextStyle(color: theme.neutral_2)),
                            const SizedBox(height: 20),
                            const Divider(
                              thickness: 1,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}
