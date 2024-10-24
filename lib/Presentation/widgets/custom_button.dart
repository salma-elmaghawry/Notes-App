import 'package:flutter/material.dart';
import 'package:notes/helper/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed; // Accepts a callback function

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed, // Make onPressed required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: onPressed, // Calls the passed function when pressed
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
