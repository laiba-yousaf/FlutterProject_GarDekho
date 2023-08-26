//import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise/contant/style.dart';

enum DialogsAction { yes, cancel }

class AlertDialogs {
  static Future<DialogsAction?> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            title: Text(title),
            content: Text(body),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: background,
                  fixedSize: const Size(100, 30),
                  ),
                  onPressed: () =>
                      Navigator.of(context).pop(DialogsAction.cancel),
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: primary_icons),
                  )),
              TextButton(
                 style: TextButton.styleFrom(
                  fixedSize: const Size(100, 30),
                  backgroundColor: primary
                 ),
                  onPressed: () => Navigator.of(context).pop(DialogsAction.yes),
                  child: Text(
                    "Logout",
                    style: TextStyle(color: primary_icons),
                  )),
            ],
          );
        });
    return (action != null) ? action : DialogsAction.cancel;
  }
}
