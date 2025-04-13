import 'package:doctors_mobile/Bookings/Components/Cards.dart';
import 'package:doctors_mobile/Bookings/Tab/TabBookings.dart';
import 'package:doctors_mobile/Bookings/Views/BookApointment.dart';
import 'package:flutter/material.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dummy = [
      "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
      "https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor.jpg?v=1684314843",
      "https://www.texomamedicalcenter.net/sites/texomamedicalcenter.net/files/doctors_visit_1200x900.jpg",
      "https://www.humanitas.net/content/uploads/2017/10/doctors.jpg",
      "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip"
    ];
    return Padding(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                  child: MyCard(
                category: "Upcoming",
                image: dummy[index],
              )));
        },
      ),
    );
  }
}

class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dummy = [
      "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
      "https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor.jpg?v=1684314843",
      "https://www.texomamedicalcenter.net/sites/texomamedicalcenter.net/files/doctors_visit_1200x900.jpg",
      "https://www.humanitas.net/content/uploads/2017/10/doctors.jpg",
      "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip"
    ];
    return Padding(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                  child: MyCard(
                category: "Completed",
                image: dummy[index],
              )));
        },
      ),
    );
  }
}

class Cancelled extends StatelessWidget {
  const Cancelled({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dummy = [
      "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
      "https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor.jpg?v=1684314843",
      "https://www.texomamedicalcenter.net/sites/texomamedicalcenter.net/files/doctors_visit_1200x900.jpg",
      "https://www.humanitas.net/content/uploads/2017/10/doctors.jpg",
      "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip"
    ];
    return Padding(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                  child: MyCard(
                category: "Cancelled",
                image: dummy[index],
              )));
        },
      ),
    );
  }
}

class BookAppointment extends StatelessWidget {
  const BookAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dummy = [
      "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
      "https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor.jpg?v=1684314843",
      "https://www.texomamedicalcenter.net/sites/texomamedicalcenter.net/files/doctors_visit_1200x900.jpg",
      "https://www.humanitas.net/content/uploads/2017/10/doctors.jpg",
      "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip"
    ];
    List<String> areas = [
      'asd',
    ];

    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.5, color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Doctor',
                      labelText: 'Search Doctor',
                      border: InputBorder.none,
                      hintStyle: const TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.5, color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: DropdownButton<String>(
                  value: areas.first, // Set initial value
                  items: areas.map((area) {
                    return DropdownMenuItem<String>(
                      value: area,
                      child: Text(
                        area,
                        style: const TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),

                  underline: const SizedBox(), // Remove underline
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.all(5),
                      child: CardBookAppointment(
                        image: dummy[index],
                        ontap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => BookDoctor())),
                      ));
                }),
          ),
        ],
      ),
    ));
  }
}
