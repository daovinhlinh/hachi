import 'package:flutter/material.dart';
import 'package:hachi/model/theme_model.dart';

const Color _neutral_1 = Color.fromRGBO(248, 250, 253, 1);
const Color _neutral_2 = Color.fromRGBO(29, 35, 46, 1);
const Color _neutral_3 = Color.fromRGBO(167, 176, 192, 1);
const Color _neutral_4 = Color.fromRGBO(227, 227, 227, 1);
const Color _neutral_5 = Color.fromRGBO(205, 206, 217, 1);
const Color _neutral_6 = Color.fromRGBO(93, 100, 112, 1);
const Color _neutral_7 = Color.fromRGBO(132, 130, 130, 1);
const Color _neutral_8 = Color.fromRGBO(161, 202, 183, 1);
const Color _accent_1 = Color.fromRGBO(253, 184, 18, 1);
const Color _accent_2 = Color.fromRGBO(1, 97, 174, 1);
const Color _primary = Color.fromRGBO(0, 127, 255, 1);
const Color _primary100 = Color.fromRGBO(219, 237, 255, 1);
const Color _solid_2 = Color.fromRGBO(242, 249, 255, 1);
const Color _solid_3 = Color.fromRGBO(243, 250, 255, 1);
const Color _solid_4 = Color.fromRGBO(244, 248, 252, 1);
const Color _appbarColor = Colors.white;
const Color _darkBlue = Color.fromRGBO(0, 49, 98, 1);
const Color _black80 = Color.fromRGBO(51, 51, 51, 1);
const Color _black70 = Color.fromRGBO(77, 77, 77, 1);
const Color _black60 = Color.fromRGBO(102, 102, 102, 1);
const Color _black10 = Color.fromRGBO(229, 229, 229, 1);
const Color _black1 = Color.fromRGBO(252, 252, 252, 1);
const Color _green = Color.fromRGBO(52, 199, 89, 1);
const Color _yellow = Color.fromRGBO(255, 184, 0, 1);
const Color _red = Color.fromRGBO(255, 177, 177, 1);
const Color _red1 = Color.fromRGBO(235, 87, 87, 1);
const Color _scaffoldBackgroundColor = Color.fromRGBO(254, 254, 254, 1);

const EdgeInsets padding15 = EdgeInsets.all(15);

ThemeModel get theme => ThemeModel(
    neutral_1: _neutral_1,
    neutral_2: _neutral_2,
    neutral_3: _neutral_3,
    neutral_4: _neutral_4,
    neutral_5: _neutral_5,
    neutral_6: _neutral_6,
    neutral_7: _neutral_7,
    accent_2: _accent_2,
    primary: _primary,
    primary100: _primary100,
    accent_1: _accent_1,
    solid_2: _solid_2,
    solid_3: _solid_3,
    solid_4: _solid_4,
    neutral_8: _neutral_8,
    black80: _black80,
    black70: _black70,
    black60: _black60,
    black10: _black10,
    black1: _black1,
    green: _green,
    darkBlue: _darkBlue,
    yellow: _yellow,
    red: _red,
    red1: _red1);

ThemeData get lightTheme => ThemeData.light().copyWith(
      scaffoldBackgroundColor: _scaffoldBackgroundColor,
      appBarTheme: const AppBarTheme(
          color: _appbarColor,
          elevation: 2,
          titleTextStyle: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
      textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 14, color: _neutral_1),
        bodyText2: TextStyle(fontSize: 14, color: _neutral_1),
        subtitle1: TextStyle(fontSize: 14, color: _neutral_1),
      ).apply(fontFamily: 'SFUIText'),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: const TextStyle(color: _neutral_3, fontSize: 14),
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        fillColor: theme.neutral_1,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 1, color: _neutral_3),
        ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1, color: _neutral_3)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1, color: _neutral_3)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 2, color: _accent_2)),
      ),
      radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.resolveWith((states) =>
              states.any((element) => MaterialState.selected == element)
                  ? _primary
                  : _neutral_3)),
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(_accent_2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          side: const BorderSide(width: 1, color: _neutral_5),
          checkColor: MaterialStateProperty.all(Colors.white)),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              textStyle: const TextStyle(fontWeight: FontWeight.normal),
              primary: Colors.white,
              backgroundColor: _accent_2)),
      dividerTheme: const DividerThemeData(color: _neutral_3),
    );
