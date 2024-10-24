import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.imgUrl});
  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:const TextStyle(
            fontSize: 32,
          ),
        ),
        const Spacer(),
        Image.asset(
          imgUrl,
          width: 50,
          height: 45,
        ),
      ],
    );
  }
}
