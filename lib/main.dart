import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hachi/routes.dart';
import 'package:hachi/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.profile,
      getPages: routes,
      theme: lightTheme,
      locale: const Locale('vi'),
      fallbackLocale: const Locale('en'),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: child!,
      ),
    );
  }
}
