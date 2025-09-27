import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xFFFFEFD7),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 18,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    const Color(0xFFFF954A),
    const Color(0xFF878787),
    const Color(0xFF7B9400),
    const Color(0xFF3C8CD7),
    const Color(0xFFDE6E93),
    const Color(0xFFEEEE11),
    const Color(0xFFC9C9C9),
    const Color(0xFF0299B1),
    const Color(0xFF8E8E0B),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
