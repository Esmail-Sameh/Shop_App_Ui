import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextItem extends StatelessWidget {
  final String textTitle;
  final bool isClick;

  const TextItem({super.key, required this.textTitle, required this.isClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textTitle,
          style: TextStyle(
            fontSize: isClick ? 18 : 16,
            fontWeight: isClick ? FontWeight.w800 : FontWeight.w500,
            color: isClick ? Colors.blue.shade900 : Colors.blue.shade600,
          ),
        ),
        isClick?
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue.shade900,
            ),
          ):

        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
        )

      ],
    );
  }
}
