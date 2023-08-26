import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/Explore_page/Widget/list_row.dart';
import 'package:practise/contant/style.dart';
import 'package:practise/home/houses_detail.dart';
import 'package:practise/msg_page/Search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practise/Explore_page/Widget/list_row.dart';

class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  int _houseIndex = 0;
  int _saleIndex = 0;

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

  List products1 = [
    {
      "text": "For Sale",
    },
    {
      "text": "For rent",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250, top: 10),
            child: Text(
              "Explore Items",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: search(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: list_row(products,_houseIndex,  _updateHouseIndex),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 190),
            child: list_row(products1,_saleIndex,  _updateSaleIndex),
          ),
          house_detail(context),
          house_detail(context),
        ]),
      ),
    );
  }
}
