import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/Data/Models/note_model.dart';
import 'package:notes/helper/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fecthAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
