import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<String> item = <String>[
    'johar_town,lahore',
    'DHA,lahore',
    'green_land,lahore'
  ];
      String dropdownValue = 'johar_town,lahore';

  @override
  Widget build(BuildContext context) {
    // Step 1.
// Step 2.
   return DropdownButton<String>(
      // Step 3.
      //value: dropdownValue,
      // Step 4.
      items: item
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(fontSize:14),
          ),
        );
      }).toList(),
      // Step 5.
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
    );
  }
}
