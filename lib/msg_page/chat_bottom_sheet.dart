import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/account_page/my_textfield.dart';
import 'package:practise/contant/icons.dart';
import 'package:practise/contant/style.dart';

class chat_bottom_sheet extends StatefulWidget {
  const chat_bottom_sheet({super.key});
  
  @override

  State<chat_bottom_sheet> createState() => _chat_bottom_sheetState();
}

class _chat_bottom_sheetState extends State<chat_bottom_sheet> {
  TextEditingController titleCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String hint_text;
    var vwidth = MediaQuery.of(context).size.width;
    return Container(
      width: vwidth,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 22,
                backgroundColor: background,
                child: Image(image: AssetImage(add_picture))),
            // Container(
            //   width: vwidth - 150,
            //   height: 45,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(15), color: white),
            //   padding: const EdgeInsets.only(left: 30),
            //   child: Center(
            //     child: TextField(
            //       // controller: SMScontroller,
            //       style: const TextStyle(color: primary_icons),
            //       decoration: const InputDecoration(
            //           hintText: "Type your message here",
            //           hintStyle: TextStyle(
            //             color: primary_icons,
            //             fontSize: 16,
            //           ),
            //           border: InputBorder.none),
            //     ),
            //   ),
            // ),
           my_textfield(context,"Type your msg here", titleCtrl,),
            CircleAvatar(
                radius: 22,
                backgroundColor: background,
                child: Image(image: AssetImage(send))),
          ],
        ),
      ),
    );
  }
}
