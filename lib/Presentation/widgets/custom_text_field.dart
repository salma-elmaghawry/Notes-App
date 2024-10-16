import 'package:flutter/material.dart';
import 'package:notes/helper/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Search Here ",
        
          filled: true,
        //fillColor: const Color.fromARGB(255, 212, 215, 219),
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(Icons.search, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          
        ),
        focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(15),
          borderSide:const BorderSide(width: 2.0, color: primaryColor),

        
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        //  borderSide:const BorderSide(width: 2.0, color: Colors.purple),
          
        ),
      ),
    );
  }
}
