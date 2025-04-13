import 'package:flutter/material.dart';

class ResponsiveCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;

  const ResponsiveCircleAvatar({
    super.key,
    required this.imageUrl,
    this.radius = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        // Adjust radius based on screen width for responsiveness
        double adjustedRadius = radius;
        if (screenWidth < 600) {
          adjustedRadius = radius * 0.8; // Adjust scaling factor as needed
        } else if (screenWidth < 900) {
          adjustedRadius = radius * 0.9; // Adjust scaling factor as needed
        }

        return CircleAvatar(
          radius: adjustedRadius,
          backgroundImage: NetworkImage(imageUrl),
        );
      },
    );
  }
}
