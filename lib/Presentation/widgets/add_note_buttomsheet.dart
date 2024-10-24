import 'package:flutter/material.dart';
import 'package:notes/Presentation/widgets/custom_button.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';

class AddNoteButtomsheet extends StatelessWidget {
  const AddNoteButtomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.all(10),
      child:   SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),
            CustomTextField(hintText: "Title"),
            SizedBox(height: 20,),
            CustomTextField(hintText: "Content",maxLines: 5,),
              SizedBox(height: 30,),
            CustomButton(text: "Add",onPressed:(){}),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
