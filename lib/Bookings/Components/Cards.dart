import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MyCard extends StatefulWidget {
  final String image;
  final String category;
  const MyCard({super.key, required this.image, required this.category});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0XFFFFFFFF)),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Aug 25, 2023 - 10:00 AM"),
                widget.category == "Upcoming"
                    ? Row(
                        children: [
                          Text(
                            "Remind me",
                            style: TextStyle(fontSize: 10),
                          ),
                          Switch(
                            // This bool value toggles the switch.
                            value: light,
                            activeColor: Colors.white,
                            activeTrackColor: Color(0xFF0165FC),
                            onChanged: (bool value) {
                              // This is called when the user toggles the switch.
                              setState(() {
                                light = value;
                              });
                            },
                          )
                        ],
                      )
                    : Container()
              ],
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.network(
                      widget.image,
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Jenny William",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_city_outlined),
                          Text("G8502 Preston Rd. Inglewood")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.book_online_outlined),
                          Row(
                            children: [
                              Text("Booking ID:"),
                              Text(
                                "#DR452SA54",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            widget.category == "Upcoming"
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 140,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: Color(0XFFD3E6FF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Center(
                              child: Text(
                                widget.category == "Upcoming"
                                    ? "Cancel"
                                    : "Re-Book",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 40,
                        width: 140,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: Color(0XFF0165FC),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Center(
                              child: Text(
                                widget.category == "Upcoming"
                                    ? "Reschedule"
                                    : "Add Review",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      )
                    ],
                  )
                : widget.category == "Completed"
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 140,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    backgroundColor: Color(0XFFD3E6FF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Center(
                                  child: Text(
                                    widget.category == "Upcoming"
                                        ? "Cancel"
                                        : "Re-Book",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                            width: 140,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    backgroundColor: Color(0XFF0165FC),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Center(
                                  child: Text(
                                    widget.category == "Upcoming"
                                        ? "Reschedule"
                                        : "Add Review",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          )
                        ],
                      )
                    : SizedBox(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: Color(0XFF0165FC),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Center(
                              child: Text(
                                "Add Review",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}

class CardBookAppointment extends StatelessWidget {
  final String image;
  final Function ontap;
  const CardBookAppointment(
      {super.key, required this.image, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0XFFDBEAFF),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            spacing: 5,
                            children: [
                              SvgPicture.asset(
                                "lib/Assets/Svg/verified.svg",
                              ),
                              Expanded(
                                child: Text(
                                  "Professional Doctor",
                                  style: TextStyle(color: Color(0xFF3383FB)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "Dr. Jacob Jones",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Dentist",
                          style: TextStyle(fontSize: 10),
                        ),
                        Row(
                          children: [
                            AnimatedRatingStars(
                              initialRating: 2.5,
                              // onChanged: (rating) {
                              //   setState(() {
                              //     _rating = rating;
                              //   });
                              // },
                              displayRatingValue:
                                  true, // Display the rating value
                              interactiveTooltips:
                                  true, // Allow toggling half-star state
                              customFilledIcon: Icons.star,
                              customHalfFilledIcon: Icons.star_half,
                              customEmptyIcon: Icons.star_border,
                              starSize: 20.0,
                              animationDuration:
                                  const Duration(milliseconds: 500),
                              animationCurve: Curves.easeInOut,
                              onChanged: (rating) {},
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                              "4.8",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            Expanded(
                                child: Text(
                              "49 Reviews",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => ontap(),
                  style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Color(0XFFD3E6FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Center(
                    child: Text(
                      'Make Appointment',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )),
            ],
          ),
        ));
  }
}
