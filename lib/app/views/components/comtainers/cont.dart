
import 'package:doctor_chanelling/app/views/components/constants/constants.dart';
import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 280,
      child: Center(
          child: Text(
        text!,
        style: TextStyle(color: Colors.white, fontSize: 18),
      )),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: blueColor),
    );
  }
}
