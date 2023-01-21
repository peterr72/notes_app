import 'package:flutter/material.dart';
import 'package:notes/custom_widgets/add_note_widget.dart';
import 'package:notes/theme/colors/colors.dart';
import 'package:notes/theme/spaces/spaces.dart';

class NotesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NotesAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text('Notes'),
      centerTitle: true,
      titleTextStyle: Theme.of(context).textTheme.displayMedium!.copyWith(color: MainColors.whiteColor),
      leading: IconButton(
        splashRadius: 25,
        onPressed: () {},
        icon: const Icon(
          Icons.info,
        ),
      ),
      actions: [
        IconButton(
          splashRadius: 25,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(NoteAppSpaces.kBorderRadius)),
              context: context,
              builder: (context) => const AddNoteWidget(),
            );
          },
          icon: const Icon(
            Icons.add,
          ),
        ),
      ],
    );
  }
}
