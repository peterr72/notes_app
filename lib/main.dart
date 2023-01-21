import 'package:flutter/material.dart';
import 'package:notes/theme/theme_data/theme_data.dart';
import 'package:notes/views/edit_note/edit_note_view.dart';
import 'package:notes/views/home/home_view.dart';
import 'package:notes/views/note/note_view.dart';

void main() {
  runApp(const NotesApplication());
}

class NotesApplication extends StatelessWidget {
  const NotesApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: NoteApplicationThemeData().getMainTheme(context),
      initialRoute: HomeView.id,
      routes: {
        HomeView.id: (context) => HomeView(),
        EditNoteView.id: (context) => const EditNoteView(),
        NoteView.id: (context) => const NoteView(),
      },
    );
  }
}
