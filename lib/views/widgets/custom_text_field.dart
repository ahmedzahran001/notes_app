import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: Color(0xFFD79443),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white),
        border: buildBorde(),
        enabledBorder: buildBorde(),
        focusedBorder: buildBorde(Color(0xFFD79443)),
      ),
    );
  }

  OutlineInputBorder buildBorde([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Color(0xFF7F2A34)),
    );
  }
}
