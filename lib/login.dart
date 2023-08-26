//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/Sign_up.dart';
import 'package:practise/contant/icons.dart';
import 'package:practise/contant/style.dart';
import 'package:practise/home/homepage.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Image(image: AssetImage(gar),width: 200,height: 200,)
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text("Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
           SizedBox(
            width: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: Icon(Icons.email),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(), hintText: 'Email')),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Icon(Icons.password),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'password',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 10),
                            child: Image(
                              image: AssetImage(hide),
                              width: 20,
                              height: 20,
                            ),
                          ))),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200, top: 10),
            child: Text(
              'Forget password',
              style: TextStyle(color: blue),
            ),
          ),
          SizedBox(height: 10,),
          TextButton(
            style: TextButton.styleFrom(
                                    fixedSize: const Size(200, 10),
                                    foregroundColor: primary_icons,
                                    backgroundColor: primary,
                                    textStyle: const TextStyle(fontSize: 14)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => homepage()));
              },
              child: Text("login")),
              SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.only(top: 10),
             child: TextButton(
              style: TextButton.styleFrom(
                                      fixedSize: const Size(200, 10),
                                      foregroundColor: primary_icons,
                                      backgroundColor: lightGrey,
                                      textStyle: const TextStyle(fontSize: 14)),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => homepage()));
                },
                child:Row(
                  children: [
                    SizedBox(width: 15,),
                    Image(image: AssetImage(google)),
                    SizedBox(width: 20,),
                    Text("Login with google",style: TextStyle(fontSize: 12),)
                  ],
                )
             ),
           ),
           SizedBox(height: 10,),
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Text('Joined us before?'),
                
              ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>sign_up()));
              },
              child: Text("Sign-up")),
      
            ],
           )
      
        ]
        
        ),
      ),
    );
  }
}
