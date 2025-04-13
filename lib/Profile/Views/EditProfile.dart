import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text("Your Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip"),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    top: 50,
                    right: 0,
                    left: 30,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => EditProfile()));
                      },
                      child: Icon(
                        Icons.edit,
                        size: 30,
                        color: const Color(0xFF2279FC),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Ester Howard",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )),
                      border: OutlineInputBorder(
                        gapPadding: 1.5,
                        borderSide: BorderSide(
                            color: Color(0XFFEFEFEF), style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Phone Number"),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "09309094441",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )),
                      border: OutlineInputBorder(
                        gapPadding: 1.5,
                        borderSide: BorderSide(
                            color: Color(0XFFEFEFEF), style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email"),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "sample@gmail.com",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )),
                      border: OutlineInputBorder(
                        gapPadding: 1.5,
                        borderSide: BorderSide(
                            color: Color(0XFFEFEFEF), style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("DOB"),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "DD/MM/YY",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )),
                      border: OutlineInputBorder(
                        gapPadding: 1.5,
                        borderSide: BorderSide(
                            color: Color(0XFFEFEFEF), style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gender"),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Select Gender",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )),
                      border: OutlineInputBorder(
                        gapPadding: 1.5,
                        borderSide: BorderSide(
                            color: Color(0XFFEFEFEF), style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          height: 40,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  backgroundColor: Color(0XFF0165FC),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Center(
                child: Text(
                  "Update Profile",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
    );
  }
}
