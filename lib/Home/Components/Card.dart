import 'package:doctors_mobile/Home/Components/CircleAvatar.dart';
import 'package:flutter/material.dart';

class CardUpcomingSchedule extends StatelessWidget {
  const CardUpcomingSchedule({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
          color: Color(0xFF0165FC), borderRadius: BorderRadius.circular(20)),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
            child: ListTile(
              horizontalTitleGap: 10.5,
              titleAlignment: ListTileTitleAlignment.top,
              leading: ResponsiveCircleAvatar(
                  imageUrl:
                      "https://plus.unsplash.com/premium_photo-1658506671316-0b293df7c72b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 0,
                      child: Text(
                        "Dr. Alana Rueter",
                        style: TextStyle(color: Colors.white),
                      )),
                  Expanded(
                      flex: 2,
                      child: Text("Dentist Consultation",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      color: const Color(0XFF0165FC),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF0858D1)),
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          'Monday, 26 July',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 2.0,
                    width: 30,
                    color: Colors.white10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.access_time_filled,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          '09:00 - 10:00',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
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
