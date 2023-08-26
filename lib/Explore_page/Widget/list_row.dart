import 'package:flutter/material.dart';
import 'package:practise/flat%20&%20portion.dart';
import 'package:practise/house_button.dart';

import '../../contant/style.dart';
import '../../plot.dart';

// String variable = 'House';
// String variable1 = 'For Sale';
// String variable2 = 'ALL';

List pages = [
  {
    "text": house_button(),
  },
  {
    "text": plot(),
  },
  {
    "text": flat(),
  },
  {
    "text": "projects",
  },
];

Widget list_row(list_data, curr_index, Function(int) onIndexChanged,) {
  return Container(
    height: 30,
    child: Material(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: list_data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 4),
            child: TextButton(
              onPressed: () {
                onIndexChanged(index);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => pages[index]["text"],
                //   ),
                // );
              },
              style: TextButton.styleFrom(
                foregroundColor: primary_icons,
                textStyle: const TextStyle(fontSize: 12),
                backgroundColor: curr_index == index ? primary : lightGrey,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  list_data[index]['text'],
               
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}

class MyWidget extends StatefulWidget {
  final List list_data;
  final int initialIndex;
  final Function(int) onIndexChanged;

  MyWidget({
    required this.list_data,
    this.initialIndex = 0,
    required this.onIndexChanged,
  });

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late int curr_index;

  @override
  void initState() {
    super.initState();
    curr_index = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return list_row(widget.list_data, curr_index, (index) {
      setState(() {
        curr_index = index;
        widget.onIndexChanged(index);
      });
    });
  }
}
