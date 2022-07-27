import 'package:flutter/material.dart';
import 'package:my_first_flutter/screens/bottom_bar.dart';
import 'package:my_first_flutter/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter',
      theme: ThemeData(
        primaryColor: CustomStyles.primaryColor,
      ),
      home: const BottomBar(),
    );
  }
}