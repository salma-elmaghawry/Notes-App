import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        const Text("Hello,\nMy Notes",style: TextStyle(
          
          fontSize: 32,
        ),),
        const   Spacer(),
        Image.asset("assets/images/notepad.png",width: 50,height: 45,),
        
      
        
      ],
    );
  }
}
