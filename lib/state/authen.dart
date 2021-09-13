import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutterapp/utility/mystyle.dart';

class Authen extends StatefulWidget {
  // const Authen({ Key? key }) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  late double screen;
  late String user,password;

  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.yellow[300],
        body: Center(
          child: Column(
            children: [
              showLogo(),
              MyStyle().title('My IoT App'),
              buildUser(),
              buildPassword(),
              buildlogin()
            ],
          ),
        ));
  }

  Container buildlogin() {
    return Container(
              width: screen * 0.6,
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(primary: MyStyle().primaryColor),
                onPressed: () {},
                child: Text('Login'),
              ),
            );
  }

  Container buildUser() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.6,
      child: TextField(onChanged: (value)=>user = value.trim(),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.perm_identity,
            color: MyStyle().darkColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().darkColor),
          ),
          labelStyle: TextStyle(color: MyStyle().darkColor),
          labelText: 'User :',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().lightColor),
          ),
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.6,
      child: TextField(onChanged: (value) => password = value.trim(),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock_outline,
            color: MyStyle().darkColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().darkColor),
          ),
          labelStyle: TextStyle(color: MyStyle().darkColor),
          labelText: 'Password :',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().lightColor),
          ),
        ),
      ),
    );
  }

  Container showLogo() {
    return Container(
      width: screen * 0.3,
      child: MyStyle().showLogo(),
    );
  }
}
