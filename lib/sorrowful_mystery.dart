// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_string_interpolations, camel_case_types

import 'package:flutter/material.dart';
import 'package:rosary_app/custom_widgets.dart';
import 'package:rosary_app/joyful_mystery.dart';

class Sorrowful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              prayerappbar(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    startrosary(),
                    divider(),
                    decades('First', 'Sorrowful',
                        'The Agony of Jesus in the Garden of Gethsemane.'),
                    decades('Second', 'Sorrowful',
                        'The Scourging of Jesus at the Pillar.'),
                    decades('Third', 'Sorrowful',
                        'The Crowning of Jesus with Thorns.'),
                    decades(
                        'Fourth', 'Sorrowful', 'The Carrying of the Cross.'),
                    decades('Fifth', 'Sorrowful',
                        'The Crucifixion and Death of Jesus.'),
                    hailholyqueen(),
                    divider(),
                    Text(
                      'Pray for us, O holy Mother of God.That we may be made worthy of the promises of Christ',
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    divider(),
                    letusprayhhq(),
                    divider(),
                    Text(
                      '(End with the Sign of the Cross)\n\nIn the name of the Father, and of the Son, and of the Holy Spirit. Amen.',
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    divider(),
                    litanyButton(),
                    divider(),
                    divider()
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}

class prayerappbar extends StatelessWidget {
  const prayerappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined),
          ),
          Text(
            'Sorrowful Mystery',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
