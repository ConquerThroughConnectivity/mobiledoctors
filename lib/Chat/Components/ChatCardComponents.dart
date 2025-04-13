import 'package:flutter/material.dart';

class CardChat extends StatelessWidget {
  final String text;
  final List<Color> color;
  final bool isUser;
  const CardChat(
      {super.key,
      required this.text,
      required this.color,
      required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          // color: isUser ? Colors.blue : Colors.grey[200],
          gradient: LinearGradient(colors: color),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ),
    );
  }
}
