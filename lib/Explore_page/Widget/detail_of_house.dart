import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../contant/style.dart';

Widget detail(icon, numb, name) {
  
  return Padding(
    padding: const EdgeInsets.only(left: 8,top: 10),
    child: Container(
      // height: 45,
      width: 90,
      color: white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                (icon), 
                 SizedBox(
              width: 5,
            ),
              
              Text(numb)
              
              ],
            ),
          ),
         
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(name),
          )
        ],
      ),
    ),
  );
}
