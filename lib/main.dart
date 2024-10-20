import 'package:flutter/material.dart';
import 'package:notes/Presentation/views/notes_view.dart';

void main() {
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
