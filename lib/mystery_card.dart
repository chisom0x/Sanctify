// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rosary_app/glorious_mystery.dart';
import 'package:rosary_app/joyful_mystery.dart';
import 'package:rosary_app/luminous_mystery.dart';
import 'package:rosary_app/sorrowful_mystery.dart';

class Mystery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 25),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: MysteryBox(
                    title: 'Joyful\nMystery',
                    day: 'Monday & Saturday',
                    destination: Joyful(),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: MysteryBox(
                    title: 'Glorious\nMystery',
                    day: 'Sunday',
                    destination: Glorious(),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: MysteryBox(
                    title: 'Luminous\nMystery',
                    day: 'Monday & Saturday',
                    destination: Luminous(),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: MysteryBox(
                    title: 'Sorrowful\nMystery',
                    day: 'Sunday',
                    destination: Sorrowful(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MysteryBox extends StatelessWidget {
  final String title;
  final String day;
  final Widget destination;

  const MysteryBox({
    Key? key,
    required this.title,
    required this.day,
    required this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.deepPurpleAccent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              Text(
                "($day)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
