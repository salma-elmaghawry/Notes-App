import 'package:flutter/material.dart';
import 'package:notes/helper/constants.dart';

class NoteItem extends StatelessWidget {
  NoteItem({required this.color, super.key});
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const  EdgeInsets.only(left: 5.0,top:11,bottom: 18 ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Salma Note",
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle:const  Padding(
                padding:  EdgeInsets.only(top: 8,bottom: 10),
                child:  Text(
                  "It is a CS studnet hjhbjvbghvcgk ",
                  style: TextStyle(
                    color: grey,
                    fontSize: 16,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon:const  Icon(Icons.delete),
                iconSize: 30,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(right: 20),
              child:  Text(
                "May 21,2024",
                style: TextStyle(color: grey,),
              ),
            ),
          ],
        ));
  }
}
