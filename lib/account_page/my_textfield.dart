//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../contant/style.dart';

Widget my_textfield(context,title, ctrl) {
    var vwidth = MediaQuery.of(context).size.width;
  
  // Text_data = Widget.hint_text;
  return Container(

   
    width: vwidth - 150,
    height: 45,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(15), color: white),
    padding: const EdgeInsets.only(left: 30),
    child: Center(
      child: TextField(
        // controller: SMScontroller,
        style: const TextStyle(color: primary_icons),
        decoration:  InputDecoration(
            hintText: title,
            hintStyle: TextStyle(
              color: primary_icons,
              fontSize: 16,
            ),
            border: InputBorder.none),
      ),
    ),
  );
}
