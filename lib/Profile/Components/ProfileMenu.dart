import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProfileMenu extends StatelessWidget {
  final String image;
  final String text;

  const ProfileMenu({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
              leading: Image.asset(
                image,
                fit: BoxFit.cover,
                scale: 2.5,
                color: const Color(0xFF2279FC),
              ),
              title: Text(text),
              trailing: Icon(Icons.arrow_forward_ios,
                  color: const Color(0xFF2279FC))),
          Divider(
            thickness: 1.0,
            color: Color(0XFFE4EAF6),
            height: 3,
          )
        ],
      ),
    );
  }
}
