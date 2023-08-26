import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/contant/style.dart';

import '../contant/icons.dart';
import 'chat_bottom_sheet.dart';
import 'chat_sample.dart';

class chat_page extends StatelessWidget {
  const chat_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //backgroundColor: background,
      appBar: PreferredSize(
        
        preferredSize: Size.fromHeight(70.0),
        child:Padding(
          padding:EdgeInsets.only(top:5),
          child: AppBar(
            leading: BackButton(color:primary_icons,),
            leadingWidth: 30,
            backgroundColor:white,
            title: Row(
              children: [
                ClipRRect(
                  //borderRadius: BorderRadius.circular(30),
                  child: Image(image: AssetImage(acount),height: 40,width: 40,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Flutter",style: TextStyle(color: primary_icons),),

                )
              ],
            ),
            
            // actions: [
            //   Padding(padding: EdgeInsets.only(right: 15),
            //   child: Icon(
            //     Icons.call,
            //     color: primary_icons,
            //   ),
            //   ),

            //    Padding(padding: EdgeInsets.only(right: 15),
            //   child: Icon(
            //     Icons.video_call,
            //     color: primary_icons,
            //   ),
            //   ),

            //    Padding(padding: EdgeInsets.only(right: 15),
            //   child: Icon(
            //     Icons.more_vert,
            //     color: primary_icons,
            //   ),
            //   ),
          
            // ]
            
            ), 
        ) ,
      ),
      // padding:
      body:Padding(
        padding: const  EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 80),
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              chat_sample(userData: {"name":"laiba"}, chatData: {"sms":"hey how are you,where are you,what are you doing","time":"10:00pm","name":"mudasir"},),
              chat_sample(userData: {"name":"laiba"}, chatData: {"sms":"i am fine and thanks asking about me.I hope you will be fine","time":"11:00pm","name":"laiba"},),
              chat_sample(userData: {"name":"laiba"}, chatData: {"sms":"hey how are you","time":"10:00pm","name":"mudasir"},),
              chat_sample(userData: {"name":"laiba"}, chatData: {"sms":"i am fine","time":"11:00pm","name":"laiba"},),
              chat_sample(userData: {"name":"laiba"}, chatData: {"sms":"hey how are you","time":"10:00pm","name":"mudasir"},),
              chat_sample(userData: {"name":"laiba"}, chatData: {"sms":"i am fine","time":"11:00pm","name":"laiba"},),
        
            
            ],
            
          ),
        ),
      ),
      
      bottomSheet: chat_bottom_sheet(),


    );
  }
}
