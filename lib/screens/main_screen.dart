import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vanishing_insults/constants/program_config.dart';
import 'package:vanishing_insults/widget/user_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // var screenHeight = window.physicalSize.height / window.devicePixelRatio;
  var screenWidth = window.physicalSize.width / window.devicePixelRatio;

  List<Widget> users = [];
  setUsers() {
    setState(() {
      users.add(UserWidget(
        user: robert,
        width: screenWidth,
      ));
      users.add(UserWidget(
        user: bill,
        width: screenWidth,
      ));
    });
  }

  @override
  void initState() {
    super.initState();
    setUsers();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(
          width: 360,
          height: 60,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(yasir.profilePicture!),
              ),
              Text(
                "Friend List",
                style: GoogleFonts.supermercadoOne(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {
                    print("pressed");
                  },
                  icon: const Icon(
                    Icons.group_add,
                    color: Colors.white,
                    size: 32,
                  ))
            ],
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(top: defaultPadding),
          child: Column(
            children: List.generate(users.length * 2, (index) {
              if (index.isOdd) {
                return Divider(
                  indent: size.width * 0.08,
                  endIndent: size.width * 0.08,
                );
              } else {
                return users[index ~/ 2];
              }
            }),
          ),
        )
      ],
    )));
  }
}
