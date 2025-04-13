import 'package:doctors_mobile/Profile/Components/ProfileMenu.dart';
import 'package:doctors_mobile/Profile/Views/EditProfile.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      "lib/Assets/person.png",
      "lib/Assets/credit-card.png",
      "lib/Assets/favourite.png",
      "lib/Assets/setting.png",
      "lib/Assets/help-center.png",
      "lib/Assets/lock.png",
      "lib/Assets/logout.png",
    ];
    List<String> text = [
      "Your Profile",
      "Payment Methods",
      "Favourite",
      "Settings",
      "Help-Center",
      "Privacy Poloicy",
      "Log Out"
    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EditProfile()));
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
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Esther Howard",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            InkWell(
              onTap: () {
                // showBarModalBottomSheet(
                //   elevation: 10,
                //   expand: true,
                //   context: context,
                //   builder: (context) => Container(),
                // );
              },
              child: ProfileMenu(
                image: "lib/Assets/person.png",
                text: "Your Profile",
              ),
            ),
            InkWell(
              onTap: () {},
              child: ProfileMenu(
                image: "lib/Assets/credit-card.png",
                text: "Payment Methods",
              ),
            ),
            InkWell(
              onTap: () {},
              child: ProfileMenu(
                image: "lib/Assets/favourite.png",
                text: "Favourite",
              ),
            ),
            InkWell(
              onTap: () {},
              child: ProfileMenu(
                image: "lib/Assets/setting.png",
                text: "Settings",
              ),
            ),
            InkWell(
              onTap: () {},
              child: ProfileMenu(
                image: "lib/Assets/help-center.png",
                text: "Help-Center",
              ),
            ),
            InkWell(
              onTap: () {},
              child: ProfileMenu(
                image: "lib/Assets/lock.png",
                text: "Privacy Policy",
              ),
            ),
            InkWell(
              onTap: () {
                showBarModalBottomSheet(
                  elevation: 30,
                  context: context,
                  builder: (context) => Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: SizedBox(
                        height: 250,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Are you sure you want to logout?",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 120,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Color(0XFFB4D0FE),
                                            width: 2.0)),
                                    child: Center(
                                      child: Text(
                                        "Cancel",
                                        style:
                                            TextStyle(color: Color(0XFF2279FC)),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 120,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0XFF0165FC),
                                        border: Border.all(
                                            color: Color(0XFFB4D0FE),
                                            width: 1.5)),
                                    child: Center(
                                      child: Text(
                                        "Yes, Logout",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                );
              },
              child: ProfileMenu(
                image: "lib/Assets/logout.png",
                text: "Log Out",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
