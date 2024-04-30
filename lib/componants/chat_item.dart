import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final bool isChatMe;
  final String massegeText;

  const ChatItem(
      {super.key, required this.isChatMe, required this.massegeText});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isChatMe ?Alignment.centerRight: Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.60,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: isChatMe
              ? BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )
              : BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
          color: isChatMe ? Colors.blue[900] : Colors.white,
        ),
        child: Text(
          massegeText,
          style: TextStyle(
            color: isChatMe ? Colors.white : Colors.blue[900],
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
