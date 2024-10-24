import 'package:flutter/material.dart';
import 'package:notes/Presentation/widgets/custom_button.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';

void showEditDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Edit Note"),
        content:const  Column(
          mainAxisSize: MainAxisSize.min,
          children:  [
            CustomTextField(hintText: "Title"),
            SizedBox(height: 10),
            CustomTextField(
              hintText: "Content",
              maxLines: 5,
            ),
          ],
        ),
        actions: [
          CustomButton(
            text: "Done",
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
              // Add your logic to save or update the note here
            },
          ),
        ],
      );
    },
  );
}
