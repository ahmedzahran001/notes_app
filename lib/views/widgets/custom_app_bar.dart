import 'package:NoteApp/views/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(fontSize: 30),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
