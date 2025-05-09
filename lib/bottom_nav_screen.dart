import 'package:flutter/material.dart';
import 'package:medical_app/screens/home_screen.dart';
import 'package:medical_app/screens/notification_screen.dart';
import 'package:medical_app/screens/report_screen.dart';
import 'package:medical_app/screens/schedule_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selected = 0;
  List screens = [
    HomeScreen(),
    ScheduleScreen(),
    ReportScreen(),
    NotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        selectedItemColor: Color(0xff1C6BA4),
        backgroundColor: Colors.white,
        unselectedItemColor: Color(0xff7B8D9E),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.date_range,
                size: 30,
              ),
              label: "Schedule"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.insert_drive_file_outlined,
                size: 30,
              ),
              label: "Report"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              label: "Notifications"),
        ],
      ),
    );
  }
}
