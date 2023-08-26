//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/home/houses_detail.dart';
import 'package:practise/contant/icons.dart';
import '../contant/style.dart';

Widget house_detail(context) {
    var vwidth = MediaQuery.of(context).size.width;
    // var vheight = MediaQuery.of(context).size.height;
  
  return Padding(

    padding: const EdgeInsets.only(left: 20, right: 20, top:10),
    child: Stack(
      
      children: [
      
        Container(
            height: 280,
            width: 324,
            color: white,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    left: 7,
                  ),
                  child: Container(
                    height: 150,
                    width: vwidth-40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Image(
                      image: AssetImage(house_image),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Nacar Elite House',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(width: 100,),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('For sale'),
                          style: ElevatedButton.styleFrom(
                          backgroundColor: primary,
                          ),
                        )
                        // TextButton(
                        //   style: TextButton.styleFrom(
                        //       fixedSize: const Size(90, 5),
                        //       foregroundColor: primary_icons,
                        //       backgroundColor: primary,
                        //       textStyle: const TextStyle(fontSize: 14)),
                        //   onPressed: () {},
                        //   child: const Text('For Sale'),
                        // ),
                      ],
                    ),
                    Text('45-20 st unit house no '),
                    SizedBox(height: 10,),
                    Row(
                        children: [
                          Text("\$699,990",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(Icons.bed,color: Colors.grey,),
                          SizedBox(width: 5,),
                          Text('4'),
                           SizedBox(
                            width:20,
                          ),
                           Icon(Icons.social_distance,color: Colors.grey,),
                           SizedBox(width: 10,),
                           Text("260m",style: TextStyle(fontSize: 14),)

                     
                  ],
                    ),
                  ]
                )

                //     Padding(
                //         padding: const EdgeInsets.only(top: 150, left: 10),
                //         child: Row(
                //           children: [
                //
                //             SizedBox(
                //               width: 50,
                //             ),
                //             Padding(
                //               padding: const EdgeInsets.only(top: 15),
                //
                //           ],
                //         )),

                //   
                //     Padding(
                //       padding: const EdgeInsets.only(left: 10, top:5),
                //       child: 

                //         ],
                //       ),
                //     )
              ],
            )
            ),
      ],
    ),
  );
}
