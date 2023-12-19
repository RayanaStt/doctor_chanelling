import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key, this.hintText});
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
