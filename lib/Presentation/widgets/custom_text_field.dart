import 'package:flutter/material.dart';
import 'package:notes/helper/constants.dart';

class CustomTextField extends StatelessWidget {
    CustomTextField(
      {super.key,
      required this.hintText,
      this.prefixIcon,
      this.maxLines = 1,
      this.onSaved,this.onchange});
  final String hintText;
  final int maxLines;
  final Icon? prefixIcon;
  final void Function(String?)? onSaved;
  final Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onchange,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Value is required';
        } else
          return null;
      },
      maxLines: maxLines,
      cursorColor: primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        errorStyle: const TextStyle(
          color: Color.fromARGB(255, 250, 82, 70),
          // Red color for error text
        ),
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
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0, color: Colors.red),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
