import 'package:flutter/material.dart';
import 'package:odontologia/module/game/page.dart';
import 'package:odontologia/module/home.dart';
import 'package:odontologia/module/portada.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DPM',
      home: const HomePage(),
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 1, 1, 101),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 1, 1, 101),
        ),
        cardTheme: CardTheme(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
      initialRoute: 'portada',
      routes: {
        'portada': (context) => const Portada(),
        'home': (context) => const HomePage(),
        'game': (context) => const GamePage(),
      },
    );
  }
}
