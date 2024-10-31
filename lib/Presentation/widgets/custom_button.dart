import 'package:flutter/material.dart';
import 'package:notes/helper/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading ;
  // Accepts a callback function

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
      this.isLoading =false ,
    // Make onPressed required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed, // Calls the passed function when pressed
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: isLoading ? const SizedBox(
          height: 25,
          width: 25,
          child:  CircularProgressIndicator(color: Colors.white,)) : Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
