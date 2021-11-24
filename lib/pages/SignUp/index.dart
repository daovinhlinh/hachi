import 'package:flutter/material.dart';
import 'package:hachi/utils/styles.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Sign up',
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
                            'Đăng ký bằng SĐT',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    const SizedBox(height: 10),
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
                            'Đăng ký qua Zalo',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    const SizedBox(height: 47),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(right: 14.0),
                              child: Divider(
                                color: theme.neutral_5,
                                height: 36,
                              )),
                        ),
                        const Text('Hoặc',
                            style: TextStyle(color: Colors.grey, fontSize: 16)),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(left: 14),
                              child: Divider(
                                color: theme.neutral_5,
                                height: 36,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(label: Text('Tên')),
                    ),
                    const SizedBox(height: 16),
                    const TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(label: Text('Email')),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          label: const Text('Mật khẩu'),
                          suffix: GestureDetector(
                            child: Text('Hiện',
                                style: TextStyle(
                                    color: theme.primary, fontSize: 16)),
                          )),
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
                            'Đăng ký bằng email',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      child: Text('Format your password?',
                          style: TextStyle(
                              fontSize: 16,
                              color: theme.primary,
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                )),
          ),
        ));
  }
}
