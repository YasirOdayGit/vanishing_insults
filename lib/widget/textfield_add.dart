import 'package:flutter/material.dart';
import 'package:vanishing_insults/constants/program_config.dart';

class TextFieldAddFriends extends StatelessWidget {
  const TextFieldAddFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: const TextStyle(fontSize: 20, color: Colors.black),
        cursorColor: primaryColor,
        cursorHeight: 25,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
            hintStyle: TextStyle(color: textGray, fontSize: 20),
            alignLabelWithHint: true,
            filled: true,
            fillColor: grayBack,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            hintText: "Add friend",
            suffixIcon: Icon(
              Icons.search,
              color: textGray,
              size: 32,
            )));
  }
}
