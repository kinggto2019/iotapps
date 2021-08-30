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

  Widget showLogo() => Image(
        image: AssetImage('images/logo.png'),
      );
  MyStyle();
}
