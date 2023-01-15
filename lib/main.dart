import 'package:flutter/material.dart';
import 'package:notes/views/home/home_view.dart';

void main() {
  runApp(const NotesApplication());
}

class NotesApplication extends StatelessWidget {
  const NotesApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomeView(),
    );
  }
}
