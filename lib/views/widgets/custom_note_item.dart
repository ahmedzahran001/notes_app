import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16, top: 16, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF7F2A34),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(
                top: 3,
                bottom: 14,
              ),
              child: Text(
                'Build your career with Ahmed Zahran',
                style: TextStyle(color: const Color(0xFFD79443), fontSize: 18),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 34),
            child: Text(
              'May21 ,2025',
              style: TextStyle(color: const Color(0xFFD79443), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
