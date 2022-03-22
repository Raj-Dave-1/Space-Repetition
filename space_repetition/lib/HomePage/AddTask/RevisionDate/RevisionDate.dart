// 🚩 Dada Ki Jay Ho 🚩

import 'package:flutter/material.dart';

class RevisionDateChips extends StatefulWidget {
  @override
  _RevisionDateChipsState createState() => _RevisionDateChipsState();
}

class _RevisionDateChipsState extends State<RevisionDateChips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        // wrap
        child: Wrap(
          spacing: 10,
          children: [
            _buildChip("21 Feb,22", Colors.deepOrange.withOpacity(0.4)),
            _buildChip("21 Feb,22", Colors.deepOrange.withOpacity(0.4)),
            _buildChip("21 Feb,22", Colors.deepOrange.withOpacity(0.4)),
            _buildChip("21 Feb,22", Colors.deepOrange.withOpacity(0.4)),
            _buildChip("21 Feb,22", Colors.deepOrange.withOpacity(0.4)),
          ],
        ),
      ),
    );
  }
}

Widget _buildChip(String label, Color color) => Chip(
      avatar: Text("3"),
      label: Text(
        label,
        style: TextStyle(color: Color(0xff359fe0)),
//        style: TextStyle(color: Color(0xff359fe0)),
      ),
      backgroundColor: Color(0xffdbeef9),
//      backgroundColor: Color(0xffdbeef9),
      onDeleted: () {},
      shadowColor: color,
      deleteIcon: const Icon(
        Icons.close,
        size: 18,
      ),
    );
