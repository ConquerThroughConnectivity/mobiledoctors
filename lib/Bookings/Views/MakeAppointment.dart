import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bookingFor = StateProvider<String>((ref) => "");

class MakeAppointment extends ConsumerWidget {
  const MakeAppointment({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
    List<String> gender = [
      'Male',
      'Female',
    ];
    List<String> age = [
      '24',
      '25',
    ];
    String selected = ref.watch(bookingFor);

    return Scaffold(
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
          centerTitle: true,
          title: Text("Patient Details"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Center(
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.blue,
                          ))),
                      hint: Text("Book For"),
                      items: items.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (v) {})),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Center(
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.blue,
                          ))),
                      hint: Text("Gender"),
                      items: gender.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (v) {})),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Center(
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.blue,
                          ))),
                      hint: Text("Age"),
                      items:
                          List.generate(100, (index) => index).map((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                      onChanged: (v) {})),
            ),
          ],
        ));
  }
}
