import 'package:Mekanvlog/ana_sayfa.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//calıştırılacak kod
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // ana main
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // font
          textTheme: GoogleFonts.notoSansAdlamTextTheme(),
        ),
        home: const HomePage());
  }
}
