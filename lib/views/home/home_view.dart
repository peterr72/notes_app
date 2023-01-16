import 'package:flutter/material.dart';
import 'package:notes/custom_widgets/custom_appbar.dart';
import 'package:notes/custom_widgets/note_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NotesAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) => NoteContainer(
            containerColor: Colors.red,
            title: "task 1",
            desc: "desc 1",
            time: DateTime.now(),
          ),
        ),
      ),
    );
  }
}
