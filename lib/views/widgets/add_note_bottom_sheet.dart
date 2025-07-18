import 'package:NoteApp/views/widgets/custom_button.dart';
import 'package:NoteApp/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            Container(
              width: 108,
              height: 8,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFFFFEFD7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 32),
            CustomTextField(
              hint: 'Title...',
            ),
            SizedBox(height: 24),
            CustomTextField(
              hint: 'Content...',
              maxLines: 7,
            ),
            SizedBox(height: 32),
            // Spacer(),
            CustomButton(),
            // Spacer(),
            SizedBox(height: 32)
          ],
        ),
      ),
    );
  }
}