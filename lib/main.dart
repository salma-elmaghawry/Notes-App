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
        //scaffoldBackgroundColor:
      ),
      home: const NotesView(),
    );
  }
}
