import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/Presentation/views/notes_view.dart';
import 'package:notes/helper/constants.dart';

void main() async {
  await Hive.initFlutter();
   await Hive.openBox(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Sofia Sans",
        //scaffoldBackgroundColor:
      ),
      home: const NotesView(),
    );
  }
}
