import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Business-Logic/cubits/notes-cubit/notes_cubit.dart';
import 'package:notes/Presentation/widgets/notes_view_body.dart';
import 'package:notes/Presentation/widgets/add_note_buttomsheet.dart';
import 'package:notes/helper/constants.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            //shape: const CircleBorder(),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  context: context,
                  builder: (context) {
                    return const AddNoteButtomsheet();
                  });
            },
            child:   Icon(Icons.add,color: Colors.black,),
            backgroundColor: primaryColor,
          ),
          body: const NotesViewBody(),
        ),
    );
  }
}
