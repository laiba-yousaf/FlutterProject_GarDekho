import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:practise/home/homepage.dart';
import 'package:practise/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //       theme: ThemeData(
      //   primarySwatch: Colors.pink, 
      //   iconTheme: const IconThemeData(
      //     color: Colors.pink,
      //   ),
      //   canvasColor: Colors.green,// yaha color pass kar ka //ok//band krdo anydsk?
      //   useMaterial3: true,
      // ),
      home: Scaffold(

      body: login()
      //homepage(),

      ),
    );
  }
}
