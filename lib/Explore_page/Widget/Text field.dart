import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../contant/style.dart';

Widget textfield(context,title) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: width - 250,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color: lightGrey
        ),
        //padding: const EdgeInsets.only(left: 2),
        child: Center(
          child: TextField(
            // controller: SMScontroller,
            style: const TextStyle(color: primary_icons),
            decoration:  InputDecoration(
              contentPadding: EdgeInsets.only(
                left: 20,
              ),
              hintText: title,
              hintStyle: TextStyle(
                //color: primary_icons,
                fontSize: 16,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: primary_icons),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: primary_icons),
              ),
            ),
            //border: InputBorder.none
          ),
        ),
      ),
    ),
  );
}
