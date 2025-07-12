import 'package:NoteApp/views/widgets/custom_app_bar.dart';
import 'package:NoteApp/views/widgets/custom_note_item.dart';
import 'package:NoteApp/views/widgets/notes_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          // SizedBox(height: 12),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
