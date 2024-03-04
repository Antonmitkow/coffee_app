import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  final String label;
  const Category({super.key, required this.label});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isActive = isActive == false ? true : false;
        });
      },
      child: Chip(
        label: Text(
          widget.label,
          style: TextStyle(
              color: isActive ? Colors.black : Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            side: BorderSide(style: BorderStyle.none)),
        backgroundColor: isActive ? Colors.white : Colors.blue,
      ),
    );
  }
}
