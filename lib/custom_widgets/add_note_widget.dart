import 'package:flutter/material.dart';
import 'package:notes/theme/colors/colors.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          (Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(color: MainColors.greyColor),
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    decoration: const InputDecoration(hintText: 'Enter Title'),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    style: const TextStyle(color: MainColors.greyColor),
                    maxLines: 4,
                    decoration: const InputDecoration(hintText: 'Enter details'),
                  ),
                ],
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Text(
                  'Add Note',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
