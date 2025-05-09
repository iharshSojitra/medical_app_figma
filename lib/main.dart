import 'package:flutter/material.dart';
import 'package:medical_app/screens/home_screen.dart';
import 'package:medical_app/screens/notification_screen.dart';
import 'package:medical_app/screens/report_screen.dart';
import 'package:medical_app/screens/schedule_screen.dart';

import 'bottom_nav_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavScreen(),
    );
  }
}
