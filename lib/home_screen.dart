// ignore_for_file: unused_import, avoid_unnecessary_containers, avoid_print
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:rosary_app/custom_widgets.dart';

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
        body: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        appBar(),
        dailyRosary(),
        SizedBox(
          height: 50,
        ),
        Mystery(
          title: 'Joyful Mystery',
          day: '(Monday and Saturday)',
        ),
        // Mystery(
        //   title: 'Glorious Mystery',
        //   day: '(Sunday)',
        // ),
        // Mystery(
        //   title: 'Sorrowful Mystery',
        //   day: '(Tuesday and Friday)',
        // ),
        // Mystery(
        //   title: 'Luminous Mystery',
        //   day: '(Thursday)',
        // ),
      ],
    ));
  }
}
