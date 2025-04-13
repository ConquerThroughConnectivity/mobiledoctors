import 'package:doctors_mobile/Chat/Components/ChatCardComponents.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> convo = [
      'today I will show you how to do it again in very personal ways of improvement ajsdjasdjajsdjasjdasjdasjdjasjdasj',
      'asdasdasdasdal;dkas;ldkas',
      'asdla;skda;skd;sakdkas;llkdl;as',
      'asaskdasdjasdas',
      'qwedl;wqk8134792384598klejalsjdasd32saf6das5f',
      '2131283uajsdajfjkdsbkgdsg',
      '61, 37 28, 51, 23, 06',
      'asdasdasdasdas',
      'asdaToday is gooona be today',
      'aw oo aspda skdaks;dksa ',
      'asdaslkasdj981712j3hasd',
      'asdasdasdasdassa',
      'asdasdasdsadasdassad'
    ];

    List<bool> isUser = [
      true,
      true,
      false,
      true,
      false,
      true,
      false,
      false,
      false,
      true,
      true,
      false,
      true,
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Row(
          spacing: 10,
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Doctor JMD",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Active 1 Hour ago",
                  softWrap: true,
                  style: TextStyle(fontSize: 10),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: convo.length,
                  itemBuilder: (context, index) {
                    return CardChat(
                        isUser: isUser[index],
                        text: convo[index],
                        color: isUser[index] == true
                            ? [Colors.red, Colors.blueAccent]
                            : [Colors.purple, Colors.green]);
                  }),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type your message...',
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      convo.addAll(['asads', 'asdas', 'asdas']);
                    },
                    icon: const Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
