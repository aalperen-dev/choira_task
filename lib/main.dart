// ignore_for_file: unused_import

import 'package:choira_task/views/contansts.dart';
import 'package:choira_task/views/screens/course_details.dart';
import 'package:choira_task/views/screens/home_page.dart';
import 'package:choira_task/views/screens/login_screen.dart';
import 'package:choira_task/views/screens/otp_screen.dart';
import 'package:choira_task/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Choira',
      theme: ThemeData(
        scaffoldBackgroundColor: choiraBlue,
        appBarTheme: AppBarTheme(
          backgroundColor: choiraBlue,
          elevation: 0,
        ),
      ),
      home: const HomePage(),
    );
  }
}
