import 'package:doctor_chanelling/app/views/appointment_page/appointmentPage.dart';
import 'package:doctor_chanelling/app/views/categories/dentists/dentists.dart';
import 'package:doctor_chanelling/app/views/get_started_page/get_startedPage.dart';
import 'package:doctor_chanelling/app/views/home_page/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}
