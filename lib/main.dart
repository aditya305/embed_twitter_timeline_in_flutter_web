import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitterinflutterweb/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Embedding twitter timeline in Flutter web.",
      theme: ThemeData(
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),
      home: LandingPage(),
    );
  }
}
