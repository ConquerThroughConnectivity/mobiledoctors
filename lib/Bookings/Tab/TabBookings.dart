import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:doctors_mobile/Bookings/Views/Bookings.dart';
import 'package:flutter/material.dart';

class TabBookings extends StatelessWidget {
  const TabBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "My Bookings",
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black, width: 0.9)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BookAppointment()));
                      },
                      icon: Icon(
                        Icons.search_rounded,
                        size: 30,
                      )),
                )
              ],
              bottom: TabBar(
                labelPadding: EdgeInsets.only(bottom: 15),
                indicatorPadding: EdgeInsets.only(bottom: 10),
                automaticIndicatorColorAdjustment: true,
                indicatorAnimation: TabIndicatorAnimation.linear,
                indicatorSize: TabBarIndicatorSize.tab,
                tabAlignment: TabAlignment.fill,
                indicatorColor: Color(0xFF0165FC),
                tabs: [
                  Text(
                    "Upcoming",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Completed",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Cancelled",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
                indicator: ContainerTabIndicator(
                    widthFraction: 0.6,
                    width: 16,
                    height: 16,
                    padding: EdgeInsets.only(top: 20)),
              ),
            ),
            body: TabBarView(children: [
              Upcoming(),
              Completed(),
              Cancelled(),
            ]),
          )),
    );
  }
}
