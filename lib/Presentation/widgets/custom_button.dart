import 'package:flutter/material.dart';
import 'package:notes/helper/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      )),
    );
  }
}
