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
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "More Prayers:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                prayer(title: 'Litany of our blessed virgin mary'),
                divider(),
                // prayer(title: 'Prayer to saint Joseph'),
                // divider(),
                // prayer(title: 'Prayer to saint Micheal the arch angel'),
                // divider(),
                // prayer(title: 'Prayer for purity')
              ],
            ),
          )
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
      child: Text(
        "$title",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
    );
  }
}
