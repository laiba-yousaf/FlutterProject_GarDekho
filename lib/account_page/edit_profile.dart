//import 'dart:html';

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/account_page/my_textfield.dart';
import 'package:practise/contant/style.dart';

import '../contant/icons.dart';

class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 90),
                  child:  Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Image(image: AssetImage(acount),width: 50,height: 50,)
                    ),
                  
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 10, top: 100),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          fixedSize: const Size(100, 10),
                          foregroundColor: primary_icons,
                          backgroundColor: primary,
                          textStyle: const TextStyle(fontSize: 14)),
                      onPressed: () {},
                      child: const Text('Upload photo'),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Container(
                child: Text("Joined:November,2022"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 270),
                    child: Text("GENERAL"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text("Name*"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
                        // border: Border.all(
                        //   color: Colors.green,
                        //   width: 2,
                        // ),
                        color: lightGrey),
                    //padding: const EdgeInsets.only(left: 2),
                    child: Center(
                      child: TextField(
                        // controller: SMScontroller,
                        style: const TextStyle(color: primary_icons),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left:10,top: 20),
                          hintText: "Mudasir",
                          hintStyle: TextStyle(
                            color: primary_icons,
                            fontSize: 16,
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: primary),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: primary),
                          ),
                          // border: OutlineInputBorder(
                          //   borderSide: BorderSide(width: 3, color: Colors.red),
                          // ),
                          //border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 270),
                    child: Text("SECURITY"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text("Current Password*"),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //my_textfield("Enter your password"),

                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: lightGrey),
                    //padding: const EdgeInsets.only(left: 2),
                    child: Center(
                      child: TextField(
                        // controller: SMScontroller,
                        style: const TextStyle(color: primary_icons),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left:10,top: 20),
                          hintText: "Enter your current password",
                          hintStyle: TextStyle(
                            color: primary_icons,
                            fontSize: 16,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: primary),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: primary),
                          ),
                        ),
                        //border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 195),
                    child: Text("New Password*"),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: lightGrey),
                    padding: const EdgeInsets.only(left: 2),
                    child: Center(
                      child: TextField(
                        // controller: SMScontroller,
                        style: const TextStyle(color: primary_icons),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left:10,top: 20),
                          hintText: "Enter your new password",
                          hintStyle: TextStyle(
                            color: primary_icons,
                            fontSize: 16,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: primary),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: primary),
                          ),
                        ),
                        //border: InputBorder.none
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text("Confirm Password*"),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    //padding:EdgeInsets.only(top: 20),
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: lightGrey),
                    //padding: const EdgeInsets.only(left: 2),
                    child: Center(
                      child: TextField(
                        // controller: SMScontroller,
                        style: const TextStyle(color: primary_icons),
                        decoration: const InputDecoration(
                           contentPadding: EdgeInsets.only(left:10,top: 20),
                          hintText: "Enter your confirm password",
                          hintStyle: TextStyle(
                            color: primary_icons,
                            fontSize: 16,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: primary),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: primary),
                          ),
                        ),
                        //border: InputBorder.none
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left:70, top: 50),
                          child: TextButton(
                            style: TextButton.styleFrom(
                                fixedSize: const Size(100, 10),
                                foregroundColor: primary_icons,
                                backgroundColor: lightGrey,
                                textStyle: const TextStyle(fontSize: 14)),
                            onPressed: () {},
                            child: const Text('Cancel'),
                          )),
                          SizedBox(width: 10,),
                      Padding(
                          padding: const EdgeInsets.only(left: 5, top: 50),
                          child: TextButton(
                            style: TextButton.styleFrom(
                                fixedSize: const Size(100, 10),
                                foregroundColor: primary_icons,
                                backgroundColor: primary,
                                textStyle: const TextStyle(fontSize: 14)),
                            onPressed: () {},
                            child: const Text('Update'),
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
