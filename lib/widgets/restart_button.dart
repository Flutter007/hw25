import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestartButton extends StatelessWidget {
  final void Function() restartGame;
  const RestartButton({super.key, required this.restartGame});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: restartGame,
        label: Text(
          'Restart me!',
          style: GoogleFonts.cabinCondensed(
              color: Colors.yellow.shade700,
              fontWeight: FontWeight.bold,
              fontSize: 33),
        ),
        icon: Icon(
          Icons.restart_alt_rounded,
          color: Colors.green,
          size: 29,
        ),
      ),
    );
  }
}
