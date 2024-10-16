import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8.0),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children:  [
          Text("Hello,\nMy Notes",style: TextStyle(
            fontSize: 25,
          ),),
          Image.asset("assets/images/notepad.png",width: 50,height: 45,),
          
        
          
        ],
      ),
    );
  }
}
