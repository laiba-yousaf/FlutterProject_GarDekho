import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:practise/contant/icons.dart';
import 'package:practise/contant/style.dart';
import 'package:practise/home/houses_detail.dart';

class profile_det extends StatefulWidget {
  const profile_det({super.key});

  @override
  State<profile_det> createState() => _profile_detState();
}

class _profile_detState extends State<profile_det> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:30),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image(
                    image: AssetImage(back),
                    width: 25,
                    height: 25,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Ali Khan's Profile",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 5,
                child: Container(
                  width: 400,
                  height: 300,
                  color: offwhite,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 10),
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Image(image: AssetImage(profile_)),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 15),
                                  child: Text(
                                    "Ali Khan",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    "joined jan,2023 ",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
      
                                // Padding(
                                //     padding: const EdgeInsets.only(left: 10),
                                //     child: TextButton(
                                //       style: TextButton.styleFrom(
                                //           fixedSize: const Size(100, 10),
                                //           foregroundColor: primary_icons,
                                //           backgroundColor: primary,
                                //           textStyle: const TextStyle(fontSize: 14)),
                                //       onPressed: () {
                                //         Navigator.push(
                                //             context,
                                //             MaterialPageRoute(
                                //                 builder: (context) => edit()));
                                //       },
                                //       child: const Text('Edit'),
                                //     )),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Text("Information"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: CircleAvatar(
                                      child: Icon(
                                        Icons.phone,
                                        color: green,
                                        size: 20,
                                      ),
                                      backgroundColor: active,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('+9823456123'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 20),
                              child: Text(
                                'About',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 20),
                              child: Text(
                                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Other Listing",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            house_detail(context)
          ],
        ),
      ),
    );
  }
}
