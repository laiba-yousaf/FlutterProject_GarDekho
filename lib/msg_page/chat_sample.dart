
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/contant/style.dart';
//import 'path_to_file/upper_nip_message_clipper.dart';


class chat_sample extends StatelessWidget {
  final Map chatData;
  final Map userData;
  const chat_sample(
      {super.key, required this.chatData, required this.userData});

  @override
  Widget build(BuildContext context) {
    return chatData["name"] == userData["name"]
        ? Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(top:20,right: 80),
                child: ClipPath(
                 
                  //clipper: UpperNipMessageClipper(MessageType.receive),
                  child: Stack(

                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 200,minWidth: 100 ),
                        padding: EdgeInsets.only(
                            left: 25, top: 20, bottom: 20, right: 20),
                        decoration: BoxDecoration(
                          color: lightBlue,
                        ),
                        child: Text(
                          chatData["sms"],
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Positioned(
                          right:5,
                          bottom: 3,
                          child: Text(chatData["time"],style: TextStyle(fontSize: 10),))
                        ,
                    ],
                  ),
                )),
          ],
        )
        : Row(
              mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 20, left: 80),
                child: ClipPath(
                  
                  //clipper: LowerNipMessageClipper(MessageType.send),
                  child: Stack(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 200,minWidth: 100
                         ),
                        padding: EdgeInsets.only(
                            left: 20, top: 10, bottom: 25, right: 20),
                        decoration: BoxDecoration(
                          color: lightGrey,
                        ),
                        child: Text(
                          chatData["sms"],
                          style: TextStyle(color: primary_icons,fontSize: 14),
                        ),
                      ),
                       Positioned(
                          right:10,
                          bottom: 10,
                          child: Text(chatData["time"],style:TextStyle(fontSize: 10),))
                        ,
                    ],
                  ),
                )
                ),
          ],
        )
   ;
  }
}
