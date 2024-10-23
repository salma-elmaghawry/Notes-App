import 'package:flutter/material.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';
import 'package:notes/helper/constants.dart';

class AddNoteButtomsheet extends StatelessWidget {
  const AddNoteButtomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(10),
      child:   Column(
        children: [
          SizedBox(height: 30,),
          CustomTextField(hintText: "Title"),
          SizedBox(height: 20,),
          CustomTextField(hintText: "Content",maxLines: 5,),
          
        ],
      ),
    );
  }
}
