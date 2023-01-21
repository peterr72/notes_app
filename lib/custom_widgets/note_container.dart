import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes/theme/colors/colors.dart';
import 'package:notes/theme/spaces/spaces.dart';
import 'package:notes/views/edit_note/edit_note_view.dart';
import 'package:notes/views/note/note_view.dart';

class NoteContainer extends StatelessWidget {
  const NoteContainer({required this.containerColor, required this.data, required this.time, Key? key}) : super(key: key);
  final Color containerColor;
  final Map data;
  final DateTime time;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, NoteView.id, arguments: data);
      },
      child: Container(
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(NoteAppSpaces.kBorderRadius),
        ),
        width: double.infinity,
        height: 220,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data['title'], style: Theme.of(context).textTheme.displayLarge),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.delete,
                          color: MainColors.redColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, EditNoteView.id);
                        },
                        child: const Icon(
                          Icons.edit,
                          color: MainColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      data['desc'],
                      style: Theme.of(context).textTheme.bodyMedium,
                      overflow: TextOverflow.clip,
                      maxLines: 4,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${DateFormat('dd-mm-yyyy').format(time)} ',
                  ),
                  Text(
                    DateFormat('jms').format(time),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
