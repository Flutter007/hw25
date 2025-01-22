import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DecoraitedContainer extends StatelessWidget {
  final Widget child;
  const DecoraitedContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Rock-paper-scissors',
            style: GoogleFonts.aladin(
              color: Colors.black87,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          toolbarHeight: 40,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey,
                  Colors.yellowAccent.shade400,
                ]),
          ),
          child: child,
        ));
  }
}
