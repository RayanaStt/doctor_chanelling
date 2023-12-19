
import 'package:doctor_chanelling/app/views/doctor_profile_view/doctor_profile.dart';
import 'package:doctor_chanelling/app/views/get_started_page/get_startedPage.dart';
import 'package:doctor_chanelling/app/views/home_page/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DoctorProfileView());
  }
}
