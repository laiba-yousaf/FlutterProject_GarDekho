import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/account_page/profile.dart';
import 'package:practise/contant/style.dart';
import 'package:practise/msg_page/chat_page.dart';
import 'package:practise/msg_page/msg.dart';

import '../contant/icons.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => chat_page()
                  // msgpage(
                  //       chatdata: {"Image": acount, "sender": "Abc"},
                  //     )
                  )
                      );
        },
        child: Card(
          color: white,
          elevation: 5,
          child: ListTile(
            leading: Image(image: AssetImage(acount)),
            title: Text("flutter devlaper",style: TextStyle(color: primary_icons),),
            subtitle: Text('Kaam kro'),
            trailing: Text('10:41pm'),
          ),
        ),
      ),
    );
  }
}
