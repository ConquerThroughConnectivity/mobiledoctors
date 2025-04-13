import 'package:doctors_mobile/Chat/Components/ChatListUser.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    List<bool> isOnline = [true, false, true, true, false];
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Align(
            alignment: Alignment.center,
            child: Text(
              "Chat",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 15),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: const Color(0xFF0B4F6C),
                      )),
                  border: OutlineInputBorder(
                    gapPadding: 1.5,
                    borderSide: BorderSide(
                        color: Color(0XFFEFEFEF), style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: isOnline.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                    padding: EdgeInsets.all(10),
                    child: ChatListuser(isOnline: isOnline[index]));
              }),
        ),
      ],
    ));
  }
}
