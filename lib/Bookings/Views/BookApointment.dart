import 'package:doctors_mobile/Bookings/Components/group_button.dart';
import 'package:doctors_mobile/Bookings/Views/MakeAppointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

final daycount = StateProvider<int>((ref) => 0);
final timecount = StateProvider<int>((ref) => 0);

class BookDoctor extends ConsumerWidget {
  const BookDoctor({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<IconData> args = [
      Icons.person_2,
      Icons.backpack,
      Icons.star_half,
      Icons.reviews
    ];

    List<String> count = [
      "7,500+",
      "10+",
      "4,9+",
      "4,956",
    ];
    List<String> string = [
      "Patients",
      "Years Exp.",
      "Rating",
      "Review",
    ];
    String url =
        "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip";

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
    final countTime = ref.watch(timecount);
    final countDay = ref.watch(daycount);
    return Scaffold(
      bottomNavigationBar: Container(
          padding: EdgeInsets.all(10),
          height: 80,
          child: ElevatedButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const MakeAppointment()),
                );
              },
              child: Text(
                "Book Appointment",
                style: TextStyle(color: Colors.white),
              ))),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Book Appointment"),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundImage: NetworkImage(url),
                        ),
                      ),
                      Positioned(
                        left: 50,
                        right: 0,
                        bottom: 0,
                        child: SvgPicture.asset(
                          "lib/Assets/Svg/verified.svg",
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Jonny Wilson",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        "Dentist",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.blue,
                          ),
                          Text("New York, Unites "),
                          Icon(
                            Icons.book,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
                height: 2,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: args.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 13),
                        child: Column(
                          spacing: 2,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0XFFDBEAFF),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                args[index],
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              count[index],
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              string[index],
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Text(
                "Book Appointment",
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    height: 240,
                    child: Column(
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
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () {
                                    // ref.read(daycount.notifier).state = 0;
                                    if (index > countDay) {
                                      ref.read(daycount.notifier).state = index;
                                    } else {
                                      ref.read(daycount.notifier).state = index;
                                    }
                                    print(day[index]);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          color: day[index] == day[countDay]
                                              ? Colors.blueAccent
                                              : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Center(
                                          child: Text(
                                        day[index],
                                        style: TextStyle(
                                          color: day[index] == day[countDay]
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      )),
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
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () {
                                    if (index > countTime) {
                                      ref.read(timecount.notifier).state =
                                          index;
                                    } else {
                                      ref.read(timecount.notifier).state =
                                          index;
                                    }
                                    print(time[index]);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          color: time[index] == time[countTime]
                                              ? Colors.blueAccent
                                              : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Center(
                                          child: Text(
                                        time[index],
                                        style: TextStyle(
                                          color: time[index] == time[countTime]
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      )),
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
