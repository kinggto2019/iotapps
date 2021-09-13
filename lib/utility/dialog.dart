import 'package:flutter/material.dart';
import 'package:flutterapp/utility/mystyle.dart';

Future<Null> normalDialog(
    BuildContext buildContext, String title, String message) async {
  showDialog(
      context: buildContext,
      builder: (BuildContext) => SimpleDialog(
            title: ListTile(
              leading: MyStyle().showLogo(),
              title: MyStyle().title(title),
              subtitle: MyStyle().titleH3Button(message),
            ),
            children: [
              TextButton(
                onPressed: () => Navigator.pop(buildContext),
                child: MyStyle().titleH2('Ok'),
              )
            ],
          ));
}
