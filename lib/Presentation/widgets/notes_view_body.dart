import 'package:flutter/material.dart';
import 'package:notes/Presentation/widgets/custom_app_bar.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';
import 'package:notes/Presentation/widgets/note_item.dart';
import 'package:notes/helper/constants.dart';

class NotesViewBody extends StatelessWidget {
  const  NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.only(bottom: 10,left: 12,right: 12),
      child: Column(
        children:  [
          SizedBox(height: 40,),
          CustomAppBar(),
          SizedBox(height: 10),
          CustomTextField(),
          SizedBox(height: 10),
          NoteItem(color: secColor2),
          SizedBox(height: 10),
            NoteItem(color: secColor5),
              SizedBox(height: 10),
            NoteItem(color: secColor6),
            



          
        ],
      ),
    );
  }
}
