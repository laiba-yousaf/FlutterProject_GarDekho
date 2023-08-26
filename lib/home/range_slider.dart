//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practise/home/bottom_sheet.dart';
//import 'package:practise/contant/style.dart';

import 'bottom_sheet.dart';
import '../contant/style.dart';

class range extends StatefulWidget {
  double start_range;
  double end_range;
  range({Key? mykey, required this.start_range, required this.end_range})
      : super(key: mykey);
  

  @override
  State<range> createState() => _rangeState();
}

class _rangeState extends State<range> {
  RangeValues values = RangeValues(0, 10000);

  @override
  Widget build(BuildContext context) {
    //double val = widget.start_range;
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Container(
        child: RangeSlider(
      activeColor: primary,
      inactiveColor: lightGrey,
      values: values,
      labels: labels,
      divisions: 10,
      min: widget.start_range,
      max: widget.end_range,
      onChanged: (newvalue) {
        values = newvalue;
        print('${newvalue.start},${newvalue.end}');

        setState(() {});
      },
    ));
  }
}
