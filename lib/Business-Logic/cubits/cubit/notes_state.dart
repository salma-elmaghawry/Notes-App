part of 'notes_cubit.dart';


abstract class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

final class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure({required this.errorMessage});
}
