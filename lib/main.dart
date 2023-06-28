import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homescreen/screens/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce demo',
      theme: ThemeData(
       primarySwatch: Colors.orange,
        scaffoldBackgroundColor: const Color(0xffffffff),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),

      ),
      home: const LandingScreen(),
    );
  }
}
