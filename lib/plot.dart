import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
//import 'package:flutter_icons/flutter_icons.dart';
import 'package:practise/Explore_page/Widget/detail_of_house.dart';
import 'package:practise/contant/icons.dart';
import 'package:practise/contant/style.dart';
import 'package:practise/profile_detail.dart';

class plot extends StatefulWidget {
  const plot({super.key});

  @override
  State<plot> createState() => _plotState();
}

class _plotState extends State<plot> {
  TextEditingController name = TextEditingController();
  TextEditingController icon = TextEditingController();
  TextEditingController num = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String name;
    String icon;
    String num;
    return Scaffold(
      backgroundColor: lightGrey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack
            (
              children: [

              Container(child: Image(image: AssetImage(graph))),
              Row(
              children:[
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: CircleAvatar(
                  backgroundColor: grey,
                  child: Image(
                        image: AssetImage(back),
                        width: 20,
                        height: 20,
                      )),
              ),
            ),
             SizedBox(width: 280,),
             SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: CircleAvatar(
                  backgroundColor: grey,
                  child: Image(
                        image: AssetImage(heart),
                        width: 20,
                        height: 20,
                      )),
              ),
            ),
              ]

            )
            
              
              
              ]),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Residential plot of 7 marla is available for sale",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.location_on, color: primary),
                  ),
                  Text("Gultan iqbal,karachi,pk"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 10),
              child: Text("PKR:2500-For Sale",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                detail(Icon(Icons.social_distance), '200', 'SQ-YD'),
                SizedBox(
                  width: 5,
                ),
        
        
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
        //height: 40,
        width: 150,
        color: white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  (Icon(Icons.location_on)), 
                   SizedBox(
                width: 5,
              ),
                
                Text("Residential plot",)
                
                ],
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text("Type"),
            )
          ],
        ),
          ),
      ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 10),
              child: Text(
                'Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
               Padding(
                  padding: const EdgeInsets.only(left:30,right: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '''A solid Residential Plot is a dream come true for many,and yours can come true today if you take the lead on this offer.Searching for a great property to buy? Explore this one!Before it is too late, grab the opportunity of investing in 7 Marla propertyYou'll thank your future self for investing in property at PKR ,500,000 todayThe location of Korang Town has vast future potential.If Korang Town is your new investment destination, we have the right property for you''',
                      ),
                  ),
                ),
                
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: SizedBox(

        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  IconButton(
                    iconSize: 40,
                    icon: Image(image: AssetImage(profile)),
                    onPressed: () {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>profile_det()));
                              
                    
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ali Khan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('joined jan,2023', style: TextStyle(fontSize: 10))
                    ],
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(left: 90,),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    CircleAvatar(
                      backgroundColor: active,
                      child: IconButton(
                        icon: Icon(
                          Icons.message,
                          color: lightBlue,
                        ),
                        onPressed: () {
                          // Add your navigation logic here
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: active,
                      child: IconButton(
                        icon: Icon(
                          Icons.phone,
                          color: green,
                        ),
                        onPressed: () {
                          // Add your navigation logic here
                        },
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),

      // bottomNavigationBar: SizedBox(
      //   height: 80,
      //   child: BottomNavigationBar(
      //     backgroundColor: Colors.white,

      //     items: [
      //       BottomNavigationBarItem(
      //         icon: Padding(
      //           padding: const EdgeInsets.only(top: 5),
      //           child: Image(
      //             image: AssetImage(profile),
      //             width: 40,
      //             height: 40,
      //           ),
      //         ),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.search),
      //         label: 'Search',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: 'Profile',
      //       ),
      //     ],

      //     // currentIndex: _selectedIndex,

      //     // onTap: _onItemTapped,
      //   ),
      // ),
    );
  }
}
