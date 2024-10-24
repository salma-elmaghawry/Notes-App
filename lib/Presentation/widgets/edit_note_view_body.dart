import 'package:flutter/material.dart';
import 'package:notes/Presentation/widgets/custom_app_bar.dart';


class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 5, bottom: 10, left: 12, right: 12),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(title: "edit",imgUrl: "assets/images/notepad.png",),
        ],
      ),
    );
  }
}
