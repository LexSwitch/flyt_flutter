import 'package:flutter/material.dart';
import 'package:flyt/screens/bottom_bar.dart';
import 'package:flyt/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
      theme: ThemeData(primaryColor: primary),
    );
  }
}
