import 'package:flutter/material.dart';

final Color tGreen = Color(0xff006944);
final Color tGrey = Color(0xffc7c8ca);
final Color tBrown = Color(0xFFbc9f77);

final ThemeData myTheme = ThemeData(
  fontFamily: 'Futura',
  primarySwatch: MaterialColor(0xff006944,{50: Color(0xffe5fff6), 100: Color(0xffccffed), 200: Color(0xff99ffdb), 300: Color(0xff66ffc9), 400: Color(0xff33ffb7), 500: Color(0xff00ffa5), 600: Color(0xff00cc84), 700: Color(0xff009963), 800: Color(0xff006642), 900: Color(0xff003321)}),
  brightness: Brightness.light,
  primaryColor: tGreen,
  primaryColorBrightness: Brightness.dark,
  primaryColorLight: Color(0xff41986f),
  primaryColorDark: Color(0xff003d1d),  
  canvasColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  dividerColor: tGrey,
  selectedRowColor: tGrey,
  unselectedWidgetColor: Colors.grey.shade500,
  disabledColor: Colors.grey.shade500,
  toggleableActiveColor: tGreen,
  dialogBackgroundColor: Colors.grey.shade50,
  indicatorColor: tGreen,
  hintColor: Colors.grey.shade600,
  textSelectionHandleColor: tGreen,
    textTheme: ButtonTextTheme.primary,
    minWidth: 150.0,
    height: 40.0,
    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ),
    alignedDropdown: false,
    colorScheme: ColorScheme(
      primary: tGreen,
      primaryVariant: Color(0xff003d1d),
      secondary: tGreen,
      secondaryVariant: Color(0xff30a67e),
      surface: Color( 0xffffffff ),
      error: Colors.red.shade700,
      onBackground: Colors.black87,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
  ),
  //Text
  textTheme: TextTheme(
    headline1: TextStyle(
      color: Colors.black87,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      wordSpacing: 0.25,
    ),
    headline2: TextStyle(
      color: Colors.black87,
      fontSize: 28,
      fontWeight: FontWeight.w100,
      wordSpacing: 0.1,
    ),
    headline3: TextStyle(
      color: Colors.black87,
  ),
  //InputDecoration
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      color: Colors.grey.shade600,
    ),
    helperStyle: TextStyle(
      color: Colors.grey.shade600,
    ),
    filled: true,
    fillColor: Colors.grey.shade100,
    contentPadding: EdgeInsets.only(left:10.0, top: 1.0, right: 5.0, bottom: 1.0),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade600),
      borderRadius: BorderRadius.circular(15.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color:Colors.white),
      borderRadius: BorderRadius.circular(15.0),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(15.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(15.0),
    )
  ),
  //Dialog
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.grey.shade600),
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    ),
  ),
  //Icon
  iconTheme: IconThemeData(
    color: Colors.grey.shade600
  ),
  platform: TargetPlatform.iOS,

);
