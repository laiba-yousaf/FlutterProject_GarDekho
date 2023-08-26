//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../contant/icons.dart';
import '../contant/style.dart';
import 'alert_dialog.dart';
import 'edit_profile.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(
          children: [
            Card(
              //color: background,
              //elevation: 5,
              child:  Container(
                width: 400,
                height: 150,
                color: background,
                child:  Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Image(image: AssetImage(acount),width: 50,height: 50,)
                    ),
                  
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only( top: 40),
                          child: Text("Mudasir mukhtar"),
                        ),
                        SizedBox(
                          height:20,
                          child: Text("+92345678943",style: TextStyle(fontSize: 15),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Text("Joined:November,2022"),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  fixedSize: const Size(100, 10),
                                  foregroundColor: primary_icons,
                                  backgroundColor: primary,
                                  textStyle: const TextStyle(fontSize: 14)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => edit()));
                              },
                              child: const Text('Edit'),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text(
                "CONTENT",
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              leading: Image(
                image: AssetImage(document),
                height: 30,
                width: 30,
              ),
              title: Text(
                "My Ads",
                style: TextStyle(color: primary_icons),
              ),
              trailing: Image(
                image: AssetImage(next),
                height: 20,
                width: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Text(
                "PREFERENCE",
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              leading: Image(
                image: AssetImage(setting),
                height: 30,
                width: 30,
              ),
              title: Text(
                "Setting",
                style: TextStyle(color: primary_icons),
              ),
              trailing: Image(
                image: AssetImage(next),
                height: 20,
                width: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Image(
                image: AssetImage(mode),
                height: 30,
                width: 30,
              ),
              title: Text(
                "Mode",
                style: TextStyle(color: primary_icons),
              ),
              trailing: Image(
                image: AssetImage(toggle),
                height: 30,
                width: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Image(
                image: AssetImage(about),
                height: 30,
                width: 30,
              ),
              title: Text(
                "About",
                style: TextStyle(color: primary_icons),
              ),
              trailing: Image(
                image: AssetImage(next),
                height: 20,
                width: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
                leading: InkWell(
                 onTap: () async {
                    final action = await AlertDialogs.yesCancelDialog(
                        context, "Logout", "Are you sure want to logout?");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:5),
                    child: Image(
                      image: AssetImage(logout),
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: primary_icons),
                ),
                trailing: InkWell(
                 onTap: () {},
                  child: Image(
                    image: AssetImage(next),
                    height: 20,
                    width: 20,
                  ),
                )
                //Image(image: AssetImage(next),height: 20,width: 20,),
                ),
          ],
        ),
      ),
    );
  }
}
