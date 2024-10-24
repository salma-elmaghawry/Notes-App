import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.imgUrl,  this.fontsize=30});
  final String title;
  final String imgUrl;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: fontsize,
                )),
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
