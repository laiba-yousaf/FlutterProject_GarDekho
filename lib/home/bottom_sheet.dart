

import 'package:flutter/material.dart';
import 'package:practise/contant/style.dart';
import 'package:practise/home/dropdown_buton.dart';
import 'package:practise/home/range_slider.dart';

import '../Explore_page/Widget/list_row.dart';

List products1 = [
  {
    "text": "For Sale",
  },
  {
    "text": "For rent",
  },
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

List BedRoom = [
  {
    "text": "ALL",
  },
  {
    "text": "1",
  },
  {
    "text": "2",
  },
  {
    "text": "3",
  },
  {
    "text": "4+",
  },
];

class FilterSheet extends StatefulWidget {
  @override
  _FilterSheetState createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {
  int _houseIndex = 0;
  int _saleIndex = 0;
  int _bedIndex = 0;
  int _bathIndex = 0;

  void _updateHouseIndex(int index) {
    setState(() {
      _houseIndex = index;
    });
  }

  void _updateSaleIndex(int index) {
    setState(() {
      _saleIndex = index;
    });
  }

   void _updateBedIndex(int index) {
    setState(() {
      _bedIndex = index;
    });
  }
  

   void _updateBathIndex(int index) {
    setState(() {
      _bathIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
          
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
              leading: Icon(Icons.cancel),
              title: Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Text(
                  "Filter",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              trailing: Text(
                "reset",
                style: TextStyle(color: bottom),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Location',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: double.infinity,
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
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 300),
          //   child: Text(
          //     'Categories',
          //     style: TextStyle(fontWeight: FontWeight.bold),
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          list_row(products, _houseIndex, _updateHouseIndex),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Types',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 190),
            child: list_row(products1, _saleIndex, _updateSaleIndex),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Prices Range',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          range(
            start_range: 0,
            end_range: 10000,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "PKR: 100000",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Bed Rooms',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          list_row(BedRoom,_bedIndex,_updateBedIndex),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Bath Rooms',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          list_row(BedRoom,_bathIndex,_updateBathIndex),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Area(SQ,YD)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          range(
            start_range: 0,
            end_range: 20000,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "sq,yd:0-200",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}
