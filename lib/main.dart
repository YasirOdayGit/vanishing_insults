import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vanishing_insults/constants/program_config.dart';
import 'package:vanishing_insults/screens/main_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: primaryColor));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Daily Insults',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
