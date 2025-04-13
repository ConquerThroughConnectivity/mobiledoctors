import 'package:flutter/material.dart';

class RecommendationDoctor extends StatelessWidget {
  const RecommendationDoctor({super.key, required this.url});

  final String url;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                url,
                fit: BoxFit.cover,
              )),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 0,
                child: Text(
                  "Dr. Randy Wigham",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 0,
                child: Text(
                  "General | RSUD Gatot Subroto",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Expanded(
                flex: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      "4.8",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "(4,2799 reviews)",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
