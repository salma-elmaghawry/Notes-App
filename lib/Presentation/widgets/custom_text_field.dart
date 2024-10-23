import 'package:flutter/material.dart';
import 'package:notes/helper/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.prefixIcon, this.maxLines=1});
  final String hintText;
  final int maxLines;
  final Icon? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      cursorColor: primaryColor,
      decoration: InputDecoration(
        hintText: hintText,

        filled: true,
        //fillColor: const Color.fromARGB(255, 212, 215, 219),
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 2.0, color: primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          //  borderSide:const BorderSide(width: 2.0, color: Colors.purple),
        ),
      ),
    );
  }
}
