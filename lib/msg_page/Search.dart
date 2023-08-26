import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/contant/icons.dart';
import 'package:practise/contant/style.dart';

import '../home/bottom_sheet.dart';
import 'chat_page.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return
        //appBar: AppBar(backgroundColor: Color.fromARGB(255, 219, 214, 214),elevation: 0.0),
        //
        //backgroundColor: lightGrey,
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Container(
                height: 37,
                child: TextField(
                  
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Input your search",hintStyle: TextStyle(fontSize: 13),
                    prefixIcon: Icon(
                      Icons.search,
                      color: inActive,
                    ),
                    suffixIcon: GestureDetector(
                      onTap:()=>showModalBottomSheet<dynamic>(
                        isScrollControlled: true,
                      
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )
                        ),
                        context: context, 
                        builder: (context)=>FilterSheet(),
                        ),
                      
                      child:Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: Image.asset(bottom_sheet,height:10,width: 10,),
                      )
                    ),
                  ),
                ),
              )
            ],
          ),
        );
  }
}
