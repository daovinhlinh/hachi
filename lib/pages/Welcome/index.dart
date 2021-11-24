import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hachi/utils/styles.dart';
import 'package:hachi/utils/svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Bắt đầu',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            reverse: true,
            child: Container(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(SvgIcon.welcomeIcon),
                    const SizedBox(height: 10),
                    Text('Chào bạn, mình là Hachi!',
                        style: TextStyle(
                            color: theme.neutral_2,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Bạn muốn được gọi là',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(hintText: 'Tên'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Tuổi',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(hintText: 'Tuổi'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Thành phố đang ở',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(label: Text('Thành phố')),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 16)),
                            backgroundColor:
                                MaterialStateProperty.all(theme.primary)),
                        onPressed: () {},
                        child: SizedBox(
                          width: size.width,
                          child: const Text(
                            'Bắt đầu dùng HACHI',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ],
                )),
          ),
        ));
  }
}
