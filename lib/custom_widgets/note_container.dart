import 'package:flutter/material.dart';

class NoteContainer extends StatelessWidget {
  const NoteContainer({required this.containerColor, required this.title, required this.desc, required this.time, Key? key}) : super(key: key);
  final Color containerColor;
  final String title;
  final String desc;
  final DateTime time;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      height: 260,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 25),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.delete),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  desc,
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text(time.toString())],
            ),
          ],
        ),
      ),
    );
  }
}
