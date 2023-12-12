// ignore_for_file: unused_import
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'detailProduct.dart';
import 'wishlist.dart';
import 'inspirasi.dart';
import 'Home.dart';
import 'profile.dart';
import 'cart.dart';
import 'component.dart';
import 'primaryColor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomeApp()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/ikea.png'),
            Text(
              'Creating a better everyday life\nfor the many people.',
              style: GoogleFonts.poppins(
                  fontSize: 12, fontWeight: FontWeight.w400, color: SecondText),
                  textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
