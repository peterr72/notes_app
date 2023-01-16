import 'package:flutter/material.dart';
import 'package:notes/custom_widgets/add_note_widget.dart';

class NotesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NotesAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text('Notes'),
      titleTextStyle: const TextStyle(fontSize: 25),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 12),
          decoration: const BoxDecoration(
            color: Colors.white10,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 12),
          decoration: const BoxDecoration(
            color: Colors.white10,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                context: context,
                builder: (context) => const AddNoteWidget(),
              );
            },
            icon: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
