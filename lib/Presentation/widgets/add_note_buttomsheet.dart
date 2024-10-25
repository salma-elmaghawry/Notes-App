import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/Business-Logic/cubits/cubit/add_note_cubit.dart';
import 'package:notes/Presentation/widgets/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteButtomsheet extends StatelessWidget {
  const AddNoteButtomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.all(10),
      child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print("failed ${state.errorMessage}");
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const AddNoteForm());
        },
      )),
    );
  }
}
