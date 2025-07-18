import 'package:NoteApp/views/widgets/add_note_bottom_sheet.dart';
import 'package:NoteApp/views/widgets/notes_view_body.dart';
import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 8, bottom: 13),
        child: SizedBox(
          height: 64,
          width: 64,
          child: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Color(0xff141414),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  // side: BorderSide(
                  //   width: 1,
                  //   color: const Color(0xFFFFEED6),
                  // ),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                },
              );
            },
            backgroundColor: const Color(0xFFFFFFFF),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(80)),
            child: const Icon(
              Icons.add,
              color: Colors.black,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
