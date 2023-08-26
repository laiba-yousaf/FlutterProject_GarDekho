// import 'dart:ffi';
// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/contant/icons.dart';
import 'package:practise/contant/style.dart';
import 'package:practise/home/homepage.dart';
import 'package:practise/home/houses_detail.dart';
import 'package:practise/msg_page/Search.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Container(
              child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20 ),
                child: Container(
                  height: 50,
                  width: 50,
                  //color: primary_icons,
                  child:Image(image: AssetImage(profile_),fit:BoxFit.fill,)
                  // child: Padding(
                  //   padding: const EdgeInsets.only(top:30,bottom: 20),
                  //   child: Image(image: AssetImage(profile),width: 10,height: 10,),
                  // ),
                ),
              ),
               SizedBox(
                      width: 5,
                     ),
              Padding(
                padding: const EdgeInsets.only(right: 70,top:5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
                  children: [
                    
                    Text(
                      "Welcome",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
                      
                    ),
                    Text(
                      "Ali Khan",
                      style: TextStyle(
                          fontSize: 10,
                         
                          color: primary_icons),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 130,),
              Icon(
                Icons.notifications,
                color: primary_icons,
              ),
            ],
          )),
          
          SizedBox(height: 10,),
          search(),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text("Near by"),
          ),
          house_detail(context),
          SizedBox(
            height: 5,
          ),
          house_detail(context),
        ]),
      ),
    );
  }
}
