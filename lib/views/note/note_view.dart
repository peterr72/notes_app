import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  const NoteView({Key? key}) : super(key: key);
  static const String id = 'NoteView';
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 35,
          ),
          child: Column(
            children: [
              Text(
                data['title'],
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                data['desc'],
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
