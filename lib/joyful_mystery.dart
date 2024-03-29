// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:rosary_app/custom_widgets.dart';
import 'package:rosary_app/litany_screen.dart';

class Joyful extends StatelessWidget {
  const Joyful({Key? key}) : super(key: key);

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
                      decades('First', 'Joyful',
                          'The Annunciation of the Angel Gabriel to Mary.'),
                      decades('Second', 'Joyful',
                          'The Visitation of Mary to Elizabeth.'),
                      decades('Third', 'Joyful',
                          'The Birth of Jesus in Bethlehem of Judea.'),
                      decades('Fourth', 'Joyful',
                          'The Presentation of Jesus in the Temple.'),
                      decades('Fifth', 'Joyful',
                          'The Finding of Jesus in the Temple.'),
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
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}

class litanyButton extends StatelessWidget {
  const litanyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Litany()),
          );
        },
        child: Container(
          width: double.infinity,
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.deepPurpleAccent, // Set the border color
              width: 2.0, // Set the border width
            ),
            borderRadius: BorderRadius.circular(10.0), // Set the border radius
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              '(Optionally) continue with the litany',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
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
            'Joyful Mystery',
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
