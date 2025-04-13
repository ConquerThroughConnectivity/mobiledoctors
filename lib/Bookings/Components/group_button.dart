import 'package:flutter/material.dart';

class GroupButton {
  Widget groupButton() {
    int daycount = 0;
    int timecount = 0;
    List<String> day = [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday"
    ];
    List<String> time = [
      "7:00 PM",
      "7:30 PM",
      "8:00 AM",
      "8:30 PM",
      "9:30 AM",
      "10:30 AM",
      "11:30 AM"
    ];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Text("Day"),
          Expanded(
            child: ListView.builder(
                itemCount: day.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      daycount = index;
                    },
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: day[index] == day[daycount]
                                ? Colors.blueAccent
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(child: Text(day[index])),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 40,
          ),
          Text("Time"),
          Expanded(
            child: ListView.builder(
                itemCount: time.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      timecount = index;
                    },
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: time[index] == time[daycount]
                                ? Colors.blueAccent
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(child: Text(time[index])),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
