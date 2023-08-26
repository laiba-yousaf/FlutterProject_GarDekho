//import 'dart:js_util';

//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:practise/add_page/addition.dart';
import 'package:practise/Explore_page/Explore.dart';
import 'package:practise/contant/style.dart';
import 'package:practise/msg_page/msg.dart';
import 'package:practise/account_page/profile.dart';
import 'package:practise/contant/icons.dart';

import 'home.dart';
import '../msg_page/msg.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  // int pageindex = 0;
  // final List<Widget> tablist = [home(),clock(), addpage(), msgpage(), account()];

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: Padding(
  //     padding: const EdgeInsets.all(10.0),
  //     child: Stack(
  //       children: [
  //         tablist.elementAt(pageindex),
  //         Align(
  //           alignment: Alignment(0.0, 1.0),
  //           child: ClipRRect(
  //             borderRadius: BorderRadius.all(Radius.circular(30)),
  //             child: BottomNavigationBar(
  //               type: BottomNavigationBarType.fixed,
  //               selectedItemColor: Color.fromARGB(255, 236, 99, 99),
  //               unselectedItemColor: Colors.grey,
  //               showSelectedLabels: true,
  //               showUnselectedLabels: true,
  //               backgroundColor: Color.fromARGB(200, 82, 188, 236),
  //               currentIndex: pageindex,
  //               onTap: (int index) {
  //                 setState(() {
  //                   pageindex = index;
  //                 });
  //               },
  //               items: [
  //                 BottomNavigationBarItem(icon: Icon(Icons.home), label: " "),
  //                 BottomNavigationBarItem(
  //                     icon: Icon(Icons.lock_clock_rounded), label: " "),
  //                 BottomNavigationBarItem(icon: Icon(Icons.add), label: " "),
  //                 BottomNavigationBarItem(
  //                     icon: Icon(Icons.message), label: " "),
  //                 BottomNavigationBarItem(
  //                     icon: Icon(Icons.account_box_rounded), label: " "),
  //               ],
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   ));

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      home(),
      explore(),
      addpage(),
      msgpage(), // ya msg page double laga howa ha ?masla lkaha aya raha ha

      //msgpage(),
      account(),

      // profileScreen(UserData: widget.UserData,),
    ];
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(50),
      //   child: myAppBar(context),
      // ),
      // drawer: MyDrawer(UserData: widget.UserData,),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
        child: Icon(
          Icons.add,
          size: 35,
        ),
        backgroundColor: primary,
        mini: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 5,

        child: Container(
          // height: 60,
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 60,
                child: IconButton(
                  iconSize: 50,
                  icon: _selectedIndex == 0
                      ? Image(
                          image: AssetImage(homeicon),
                          height: 35,
                        )
                      : Image(
                          image: AssetImage(homeicon),
                          height: 30,
                        ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  iconSize: 50,
                  icon: _selectedIndex == 1
                      ? Image(
                          image: AssetImage(campus),
                          height: 35,
                        )
                      : Image(
                          image: AssetImage(campus),
                          height: 30,
                        ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0),
              //   child: IconButton(
              //     iconSize: 50,
              //     icon: _selectedIndex == 2
              //         ? Image(
              //             image: AssetImage(add),
              //             height: 35,
              //           )
              //         : Image(
              //             image: AssetImage(add),
              //             height: 30,
              //           ),
              //     onPressed: () {
              //       setState(() {
              //         _selectedIndex = 2;
              //       });
              //     },
              //   ),
              // ),
              IconButton(
                iconSize: 50,
                icon: _selectedIndex == 3
                    ? Image(
                        image: AssetImage(msg),
                        height: 35,
                      )
                    : Image(
                        image: AssetImage(msg),
                        height: 30,
                      ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
              ),
              IconButton(
                iconSize: 50,
                icon: _selectedIndex == 4
                    ? Image(
                        image: AssetImage(acount),
                        height: 35,
                      )
                    : Image(
                        image: AssetImage(acount),
                        height: 30,
                      ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
