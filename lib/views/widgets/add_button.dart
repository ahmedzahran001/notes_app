import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 35,
        decoration: BoxDecoration(
          color: const Color(0xFFFFEFD7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 24,
                  width: 24,
                  child: const CircularProgressIndicator(
                    color: Color(0xFF141414),
                  ),
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                    color: Color(0xFF141414),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
        ),
      ),
    );
  }
}
