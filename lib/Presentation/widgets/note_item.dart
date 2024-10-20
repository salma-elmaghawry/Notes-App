import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  NoteItem({required this.color, super.key});
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 12,left: 5.0,top:8.0,bottom: 11 ),
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
              subtitle: const Text(
                "It is a CS studnet hjhbjvbghvcgk,      lknl ",
                style: TextStyle(
                  color: Color.fromARGB(255, 65, 64, 64),
                  fontSize: 16,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                iconSize: 30,
                color: Colors.black,
              ),
            ),
            const Text(
              "May 21,2024",
              style: TextStyle(color: Color.fromARGB(255, 65, 64, 64),),
            ),
          ],
        ));
  }
}
