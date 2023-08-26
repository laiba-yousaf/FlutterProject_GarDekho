
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../contant/style.dart';

Widget photo()
{
  return Container(
    child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: DottedBorder(
                    color:grey,
                    strokeWidth: 2,
                    dashPattern: [
                     4,4
                    ],
                  child:Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Container(
                      height: 100,
                      width: 80,
                      color:notActive ,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: IconButton(
                              onPressed: (){}, 
                            
                              
                              icon:
                              CircleAvatar(
                                //minRadius: 10,
                              radius:60,
                              backgroundColor:primary_icons,
                              child:CircleAvatar(
                                
                                radius: 50,
                                backgroundColor: white,
                                child:
                               Icon(Icons.add,color: primary_icons,)
                              )
                              
                              ),
                            ),
                          ),
                        SizedBox(height: 10,),

                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text("Upload Photo",style: TextStyle(fontSize:10),),
                          )
                        ],
                      ),
                      
                      
                      //color: lightGrey,
                    ),
                  )
                  ),
                )
              ],
      
            
            )
           ,

  );

}