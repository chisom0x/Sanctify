// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:rosary_app/custom_widgets.dart';

class Luminous extends StatelessWidget {
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
                child: Expanded(
                  child: Column(
                    children: [
                      startrosary(),
                      divider(),
                      decades(
                          'First', 'Luminous', "Jesus' Baptism in the Jordan."),
                      decades('Second', 'Luminous', 'The Wedding at Cana.'),
                      decades('Third', 'Luminous',
                          'The Proclamation of the Kingdom.'),
                      decades('Fourth', 'Luminous', 'The Transfiguration.'),
                      decades('Fifth', 'Luminous',
                          'The Institution of the Eucharist'),
                      hailholyqueen(),
                      divider(),
                      Text(
                        'Pray for us, O holy Mother of God.That we may be made worthy of the promises of Christ',
                        style: TextStyle(
                          color: Colors.black,
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
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      divider(),
                      Text(
                        '(OR optionally continue with the litany)',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      divider(),
                      divider()
                    ],
                  ),
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
            'Luminous Mystery',
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
