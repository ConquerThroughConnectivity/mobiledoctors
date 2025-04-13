import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isOnline;

  const UserAvatar({Key? key, required this.imageUrl, required this.isOnline})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl),
        ),
        if (isOnline)
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
      ],
    );
  }
}
