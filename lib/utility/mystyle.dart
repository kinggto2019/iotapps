import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Color(0xffc9b2ba);
  Color primaryColor = Color(0xfffce4ec);
  Color lightColor = Color(0xffffffff);

  Widget title(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: darkColor,
        ),
      );

  Widget titleH2(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: darkColor,
        ),
      );

  Widget titleH3Dark(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 16,
          color: darkColor,
        ),
      );

  Widget titleH3White(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      );

  Widget titleH3Button(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 16,
          color: Colors.pink.shade700,
        ),
      );


  Widget showLogo() => Image(
        image: AssetImage('images/logo.png'),
      );
  MyStyle();
}
