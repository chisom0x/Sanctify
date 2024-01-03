// ignore_for_file: unused_import, avoid_unnecessary_containers, avoid_print
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:rosary_app/custom_widgets.dart';
import 'package:rosary_app/litany_screen.dart';

import 'dart:io';

import 'package:rosary_app/mystery_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          appBar(),
          dailyRosary(),
          SizedBox(
            height: 50,
          ),
          Mystery(),
          SizedBox(
            height: 50,
          ),
          prayer(title: 'Litany Of The Blessed Virgin Mary')
        ],
      ),
    ));
  }
}

class prayer extends StatelessWidget {
  final String title;

  const prayer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Litany()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.deepPurpleAccent, // Set the border color
              width: 2.0, // Set the border width
            ),
            borderRadius: BorderRadius.circular(10.0), // Set the border radius
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 6.5),
            child: Text(
              "$title",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
