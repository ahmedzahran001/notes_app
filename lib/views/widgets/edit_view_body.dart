import 'package:NoteApp/views/widgets/custom_app_bar.dart';
import 'package:NoteApp/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 48),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 32),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16),
          CustomTextField(
            hint: 'Content',
            maxLines: 7,
          ),
        ],
      ),
    );
  }
}
