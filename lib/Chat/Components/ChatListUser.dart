import 'package:doctors_mobile/Chat/Components/ChatAvatar.dart';
import 'package:doctors_mobile/Chat/Views/Chat.dart';
import 'package:flutter/material.dart';

class ChatListuser extends StatelessWidget {
  final bool isOnline;
  const ChatListuser({super.key, required this.isOnline});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Chat()));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: ListTile(
          enabled: true,
          // leading: UserAvatar(
          //     imageUrl:
          //         "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip",
          //     isOnline: isOnline),
          leading: SizedBox(
            height: 50,
            width: 50,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip"),
            ),
          ),
          title: Text("Carla Schoen"),
          subtitle: Text(
            "Hey",
            style: TextStyle(color: Colors.grey),
          ),

          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "09:30 PM",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
