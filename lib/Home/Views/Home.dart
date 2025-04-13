import 'package:doctors_mobile/Home/Components/Card.dart';
import 'package:doctors_mobile/Home/Components/DoctorCardRecommendation.dart';
import 'package:doctors_mobile/Home/Views/Specialty.dart';
import 'package:flutter/material.dart';

List<String> names = [
  "Dentist",
  "Cardiology",
  "Gastroenterology",
  "General",
  "Gynecology",
  "Hepatology",
  "Herbal",
  "Intestine",
  "Naturopathy",
  "Neurology",
  "Orthopaedic",
  "Osteology",
  "Otology",
  "Pediatric",
  "Plastic Surgery",
  "Pulmonology",
  "Radiology",
  "Rhinology",
  "Urology",
];
List<String> image = [
  "lib/Assets/dentist.png",
  "lib/Assets/cardiology.png",
  "lib/Assets/gastroenterology.png",
  "lib/Assets/general.png",
  "lib/Assets/gynecology.png",
  "lib/Assets/hepatology.png",
  "lib/Assets/herbal.png",
  "lib/Assets/intestine.png",
  "lib/Assets/naturopathy.png",
  "lib/Assets/neurology.png",
  "lib/Assets/orthopaedic.png",
  "lib/Assets/osteology.png",
  "lib/Assets/otology.png",
  "lib/Assets/pediatric.png",
  "lib/Assets/plastic_surgery.png",
  "lib/Assets/pulmonology.png",
  "lib/Assets/radiology.png",
  "lib/Assets/rhinology.png",
  "lib/Assets/urology.png",
];
List<String> dummy = [
  "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
  "https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor.jpg?v=1684314843",
  "https://www.texomamedicalcenter.net/sites/texomamedicalcenter.net/files/doctors_visit_1200x900.jpg",
  "https://www.humanitas.net/content/uploads/2017/10/doctors.jpg",
  "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip"
];

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Upcoming Schedule",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFF0165FC)),
                        child: Center(
                            child: Text(
                          "10",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0XFF2279FC),
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            CardUpcomingSchedule(name: "dolia"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Doctor Speciality",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0XFF2279FC),
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Specialty(
                              image_url: image[index],
                            ),
                            Text(names[index])
                          ],
                        ));
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Recommended Doctor",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0XFF2279FC),
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
                itemCount: dummy.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.all(10),
                      child: RecommendationDoctor(url: dummy[index]));
                }),
          ],
        ));
  }
}
