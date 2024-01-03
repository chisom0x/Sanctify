// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import './home_screen.dart';

Map<int, Color> color = {
  50: Color.fromARGB(19, 255, 255, 255),
  100: Color.fromARGB(51, 252, 248, 248),
  200: Color.fromARGB(75, 250, 246, 245),
  300: Color.fromARGB(102, 248, 248, 248),
  400: Color.fromARGB(126, 252, 247, 246),
  500: Color.fromARGB(153, 253, 252, 251),
  600: Color.fromARGB(177, 253, 253, 253),
  700: Color.fromARGB(204, 252, 249, 249),
  800: Color.fromARGB(228, 248, 247, 247),
  900: Color.fromARGB(255, 255, 255, 255),
};
MaterialColor colorCustom = MaterialColor(0xFFFFFF, color);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            // Remove the debug banner
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: colorCustom),
            darkTheme: ThemeData.dark(),
            themeMode: currentMode,
            home: MyHomePage(
              title: 'Home page',
            ),
          );
        });
  }
}
