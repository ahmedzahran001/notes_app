import 'package:NoteApp/constants.dart';
import 'package:NoteApp/cubits/notes_cubit/notes_cubit.dart';
import 'package:NoteApp/models/note_model.dart';
import 'package:NoteApp/views/widgets/colors_list_view.dart';
import 'package:NoteApp/views/widgets/custom_app_bar.dart';
import 'package:NoteApp/views/widgets/custom_text_field.dart';
import 'package:NoteApp/views/widgets/edit_note_colors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  void snackStatus(
    BuildContext context, {
    required String oldTitle,
    required String oldContent,
    required String newTitle,
    required String newContent,
  }) {
    if (oldTitle != newTitle && oldContent != newContent) {
      // both changed
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('The note title and content have been edited'),
            backgroundColor: Colors.green),
      );
    } else if (oldTitle != newTitle && oldContent == newContent) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('The note title only has been edited'),
            backgroundColor: Colors.green),
      );
    } else if (oldTitle == newTitle && oldContent != newContent) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('The note content only has been edited'),
            backgroundColor: Colors.green),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('The note has not been edited'),
            backgroundColor: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 48),
          CustomAppBar(
            onPressed: () {
              // القيم القديمة
              final oldTitle = widget.note.title;
              final oldContent = widget.note.subTitle;

              //  (لو المستخدم ما كتبش حاجة نستخدم القديم)
              final newTitle = title ?? widget.note.title;
              final newContent = content ?? widget.note.subTitle;

              // نعرض الـ snackbar بناءً على الفرق
              snackStatus(context,
                  oldTitle: oldTitle,
                  oldContent: oldContent,
                  newTitle: newTitle,
                  newContent: newContent);

              // بعد كده نحفظ القيم
              widget.note.title = newTitle;
              widget.note.subTitle = newContent;
              widget.note.save();

              // حدّث قائمة النوتس وارجع
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 32),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subTitle,
            maxLines: 7,
          ),
          const SizedBox(height: 16),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
