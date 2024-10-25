import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/Business-Logic/cubits/cubit/add_note_cubit.dart';
import 'package:notes/Business-Logic/simple_bloc_observer.dart';
import 'package:notes/Data/Models/note_model.dart';
import 'package:notes/Presentation/views/notes_view.dart';
import 'package:notes/helper/constants.dart';
import 'package:bloc/bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Sofia Sans",
          //scaffoldBackgroundColor:
        ),
        home: const NotesView(),
      ),
    );
  }
}
