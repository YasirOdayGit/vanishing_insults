import 'package:flutter/material.dart';
import 'package:vanishing_insults/models/user_model.dart';

Color primaryColor = const Color(0xff00c2ff);
Color accentColor = const Color(0xffffe600);
Color textGray = const Color(0xff838383);
Color blackColor = const Color(0xff000000);
Color grayBack = const Color(0xffebebeb);
double defaultPadding = 16;
String robertPicture =
    "https://media.istockphoto.com/photos/strong-real-person-real-body-senior-man-proudly-flexing-muscles-picture-id638471524";

String billPicture =
    "https://pbs.twimg.com/profile_images/1414439092373254147/JdS8yLGI_400x400.jpg";

String saraPicture =
    "https://engineering.unl.edu/images/staff/Kayla-Person.jpg";

String mePicture = "https://avatars.githubusercontent.com/u/95036084?v=4";

UserModel yasir = UserModel(
    firstName: 'Yasir',
    secondName: 'Kadhim',
    userName: "@yasir96",
    profilePicture: mePicture);

UserModel robert = UserModel(
    firstName: 'Robert',
    secondName: 'Potter',
    insulted: true,
    opened: true,
    streak: 15,
    userName: "@robertoManno",
    profilePicture: robertPicture);
UserModel bill = UserModel(
    firstName: 'Bill',
    secondName: 'Gates',
    insulted: false,
    opened: false,
    streak: 0,
    userName: "@realBillGates",
    profilePicture: billPicture);
UserModel sara = UserModel(
    firstName: 'Sara', secondName: 'Johnson', profilePicture: saraPicture);
