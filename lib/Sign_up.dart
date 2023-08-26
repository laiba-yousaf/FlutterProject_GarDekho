//import 'dart:html';

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/contant/icons.dart';
import 'package:practise/contant/style.dart';
import 'package:practise/home/homepage.dart';
import 'package:practise/login.dart';

class sign_up extends StatefulWidget {
  const sign_up({super.key});

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Image(image: AssetImage(gar),width: 200,height: 200,)
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text("Sign-up",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
           SizedBox(
            width: 10,
          ),
      
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: Icon(Icons.person),
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
                          border: UnderlineInputBorder(), hintText: 'Full Name')),
                ),
              )
            ],
          ),
          //SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Icon(Icons.email),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top:25),
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
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Icon(Icons.password),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top:25),
                  child: TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'password',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(top: 15,bottom: 10),
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Icon(Icons.phone),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top:25),
                  child: TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(), hintText: 'Phone')),
                ),
              )
            ],
          ),
          

          Padding(
            padding: const EdgeInsets.only(left:20, top:5),
            child: Row(
              children: [
                Text("by sign-up you'r agree to your"),
                TextButton(onPressed: (){}, child: Text('term & conditions')),
               
              ],
            )
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
              child: Text("Continue",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),),),
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
                    context, MaterialPageRoute(builder: (context) => login()));
              },
              child: Text("Login")),
      
            ],
           )
      
        ]
        
        ),
      ),
    );
  }
}
