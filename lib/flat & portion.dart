import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:practise/Explore_page/Widget/detail_of_house.dart';
import 'package:practise/contant/icons.dart';
import 'package:practise/contant/style.dart';
import 'package:practise/profile_detail.dart';

class flat extends StatefulWidget {
  const flat({super.key});

  @override
  State<flat> createState() => _flatState();
}

class _flatState extends State<flat> {
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
            Stack(
              children:[
              Container(child: Image(image: AssetImage(flat_and_plot))),
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
                "White house space for sell and on installment",
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detail(Icon(Icons.bed), '4', 'Bedrooms'),
                // SizedBox(
                //   width: 5,
                // ),
                detail(Icon(Icons.bathroom), '4', 'Bathrooms'),
                // SizedBox(
                //   width: 5,
                // ),
                detail(Icon(Icons.social_distance), '4', 'SQ-YD'),
                // SizedBox(
                //   width: 5,
                // ),
                detail(Image(image: AssetImage(furnish)), 'N0', 'Furnished'),
              ],
            ),
             detail(Image(image: AssetImage(floor)), '5th', 'Floor Level'), 
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
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Beautiful house for sale'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('4 bed with attach bath'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('With all facilites'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Electricity Meter installed'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Water boring'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Car Porch'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Text('Call for more information'),
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
