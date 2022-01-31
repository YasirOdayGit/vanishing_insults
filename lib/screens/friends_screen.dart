import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vanishing_insults/constants/program_config.dart';
import 'package:vanishing_insults/widget/added_user.dart';
import 'package:vanishing_insults/widget/pending_user.dart';
import 'package:vanishing_insults/widget/textfield_add.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  _FriendsScreenState createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        toolbarHeight: 60,
        elevation: 0,
        title: Text(
          "Add Friends",
          style: GoogleFonts.supermercadoOne(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
            defaultPadding, defaultPadding * 2, defaultPadding, defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFieldAddFriends(),
            SizedBox(
              height: defaultPadding * 2,
            ),
            const Text("Pending requests"),
            SizedBox(
              height: defaultPadding,
            ),
            Container(
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: grayBack),
              child: PendingUserWidget(
                user: sara,
              ),
            ),
            SizedBox(
              height: defaultPadding * 2,
            ),
            const Text("Current friends"),
            SizedBox(
              height: defaultPadding,
            ),
            Container(
                padding: EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: grayBack),
                child: Column(
                  children: [
                    AddedUserWidget(
                      user: robert,
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    AddedUserWidget(
                      user: bill,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
