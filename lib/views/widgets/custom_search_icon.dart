import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(16),
      //   color: Colors.white.withOpacity(.07),
      // ),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}
