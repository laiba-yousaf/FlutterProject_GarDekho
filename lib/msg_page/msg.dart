import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/contant/style.dart';
import 'package:practise/msg_page/Search.dart';
import 'package:practise/msg_page/user_chat_list.dart';

import '../contant/style.dart';

class msgpage extends StatefulWidget {
  const msgpage({super.key});

  @override
  State<msgpage> createState() => _msgpageState();
}

class _msgpageState extends State<msgpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70,),
             search(),
            chat()
          ],
        ),
    
      ),
    );
    
  }
}