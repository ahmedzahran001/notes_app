import 'package:NoteApp/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomTextField(
            hint: 'Gym',
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: 'push pull leg',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
