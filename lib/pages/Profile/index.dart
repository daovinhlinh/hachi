import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hachi/pages/Homepage/controller.dart';
import 'package:hachi/routes.dart';
import 'package:hachi/utils/styles.dart';
import 'package:hachi/utils/svg.dart';

final List<Map<String, String>> history = [
  {
    'title': 'Chứng minh thư nhân dân',
    'dueDate': '18/09/21',
  },
  {
    'title': 'Giấy BHYT',
    'dueDate': '11/09/25',
  },
  {
    'title': 'Thẻ học sinh',
    'dueDate': '18/09/21',
  },
  {
    'title': 'Thẻ học sinh',
    'dueDate': '18/09/21',
  },
  {
    'title': 'Thẻ học sinh',
    'dueDate': '18/09/21',
  },
];

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Hồ sơ',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          leading: BackButton(color: theme.black80),
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png'),
                  ),
                  const SizedBox(height: 20),
                  Text('Trần Hải Nam',
                      style: TextStyle(
                          fontSize: 32,
                          color: theme.neutral_2,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 8),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Text('Nam',
                            style: TextStyle(
                                color: theme.neutral_6,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        VerticalDivider(
                          color: theme.neutral_6,
                          thickness: 1,
                        ),
                        Text('18 tuổi',
                            style: TextStyle(
                                color: theme.neutral_6,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        VerticalDivider(
                          color: theme.neutral_6,
                          thickness: 1,
                        ),
                        Text('Hà Nội',
                            style: TextStyle(
                                color: theme.neutral_6,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 34),
                  Text('Giấy tờ cơ bản',
                      style: TextStyle(
                          fontSize: 24,
                          color: theme.neutral_2,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: history.map((item) {
                          return Container(
                            margin: const EdgeInsets.only(right: 16),
                            width: 110,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 110,
                                  width: 110,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: theme.red,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  item['title']!,
                                  softWrap: true,
                                  style: TextStyle(color: theme.neutral_2),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Đến ${item['dueDate']!}',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: theme.neutral_2,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      )),
                  const SizedBox(height: 30),
                  Text('Cài đặt',
                      style: TextStyle(
                          fontSize: 24,
                          color: theme.neutral_2,
                          fontWeight: FontWeight.w500)),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: theme.neutral_4))),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Thay đổi mật khẩu',
                            style: TextStyle(
                                fontSize: 16,
                                color: theme.neutral_2,
                                fontWeight: FontWeight.w500)),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: theme.neutral_2,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: theme.neutral_4))),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Cài đặt thông báo',
                            style: TextStyle(
                                fontSize: 16,
                                color: theme.neutral_2,
                                fontWeight: FontWeight.w500)),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: theme.neutral_2,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: theme.neutral_4))),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Đăng xuất',
                            style: TextStyle(
                                fontSize: 16,
                                color: theme.neutral_2,
                                fontWeight: FontWeight.w500)),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: theme.neutral_2,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
