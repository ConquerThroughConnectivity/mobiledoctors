// ignore: file_names
import 'package:flutter/material.dart';

class Specialty extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const Specialty({
    super.key,
    required this.image_url,
  });
  // ignore: non_constant_identifier_names
  final String image_url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0XFFE4EAF6)),
      child: Image.asset(
        width: 80,
        image_url,
      ),
    );
  }
}
