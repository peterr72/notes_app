import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notes/custom_widgets/custom_appbar.dart';
import 'package:notes/custom_widgets/note_container.dart';
import 'package:notes/theme/colors/colors.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  static const String id = 'HomeView';
  Color getContainerColor() {
    List<Color> availableColors = NoteContainerColors.getAllColors();
    final random = Random();
    return availableColors[random.nextInt(availableColors.length)];
  }

  final dummyData = {'title': 'Go To Gym', 'desc': 'lorem PLAY CHEST AND BACK AND ARM ONLY'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NotesAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => NoteContainer(
            containerColor: getContainerColor(),
            data: dummyData,
            time: DateTime.now(),
          ),
        ),
      ),
    );
  }
}
