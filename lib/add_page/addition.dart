
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/Explore_page/Widget/Text%20field.dart';
import 'package:practise/Explore_page/Widget/list_row.dart';
import 'package:practise/Explore_page/Widget/photo.dart';

import '../contant/icons.dart';
import '../contant/style.dart';
import '../home/dropdown_buton.dart';

List title = [
  {"text": "upload"},
  {"text": "upload"},
  {"text": "upload"},
  {"text": "upload"}
];
List products = [
  {
    "text": "House",
  },
  {
    "text": "Plots",
  },
  {
    "text": "Flat & portion",
  },
  {
    "text": "projects",
  },
];
List product1 = [
  {
    "text": "Shop and commercial",
  },
];
List products2 = [
  {
    "text": "For Sale",
  },
  {
    "text": "For rent",
  },
];

class addpage extends StatefulWidget {
  const addpage({super.key});

  @override
  State<addpage> createState() => _addpageState();
}

class _addpageState extends State<addpage> {
  int _houseIndex = 0;
  int _shapeIndex = 0;
  int _saleIndex = 0;
  

  void _updateHouseIndex(int index) {
    setState(() {
      _houseIndex = index;
    });
  }

  void _updateShapeIndex(int index) {
      setState(() {
        _shapeIndex = index;
      });
    }

  void _updateSaleIndex(int index) {
    setState(() {
      _saleIndex = index;
    });

    
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController titleCtrl = TextEditingController();
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Text(
                'Add Item',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Basic Informaion",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: width - 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //color: lightGrey
                ),
                //padding: const EdgeInsets.only(left: 2),
                child: Center(
                  child: TextField(
                    // controller: SMScontroller,
                    style: const TextStyle(color: primary_icons),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 20,
                      ),
                      hintText: "Enter Title",
                      hintStyle: TextStyle(
                        //color: primary_icons,
                        fontSize: 16,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: primary_icons),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: primary_icons),
                      ),
                    ),
                    //border: InputBorder.none
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
              child: Container(
                width: width - 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //color: lightGrey
                ),
                //padding: const EdgeInsets.only(left: 2),
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 5,

                    // controller: SMScontroller,
                    style: const TextStyle(color: primary_icons),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 120,left: 20),
                      hintText: "Description",
                      hintStyle: TextStyle(
                        //color: primary_icons,
                        fontSize: 16,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: primary_icons),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: primary_icons),
                      ),
                    ),
                    //border: InputBorder.none
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text("Upload photos",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      photo(),
                      SizedBox(
                        width: 20,
                      ),
                      photo()
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      photo(),
                      SizedBox(
                        width: 20,
                      ),
                      photo()
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text("Categories",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: list_row(products,_houseIndex,_updateHouseIndex),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: list_row(product1, _shapeIndex,_updateShapeIndex),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child:
                  Text("Types", style: TextStyle(fontWeight: FontWeight.bold)),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: list_row(products2,_saleIndex,_updateSaleIndex),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text("Price-(SQ,YD)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    textfield(context, "Price"),
                    textfield(context, 'SQ,YD'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text("Bedroom-Bathroom",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Row(
                  children: [
                    textfield(context, 'No.of Bedroom'),
                    textfield(context, 'No.of Bathroom'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text("Location",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Card(
                      color: white,
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Area,City'),
                        ),
                        trailing: Location(),
                      ),
                      elevation: 5,
                      // child: Location(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "Phone number",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: width - 100,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //color: lightGrey
                    ),
                    //padding: const EdgeInsets.only(left: 2),
                    child: Center(
                      child: TextField(
                        // controller: SMScontroller,
                        style: const TextStyle(color: primary_icons),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 20,
                          ),
                          hintText: "Number",
                          hintStyle: TextStyle(
                            //color: primary_icons,
                            fontSize: 16,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: primary_icons),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: primary_icons),
                          ),
                        ),
                        //border: InputBorder.none
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // textfield(context,'Price',titleCtrl)
          ],
        ),
      ),
    );
  }
}
