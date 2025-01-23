import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticButton extends StatelessWidget {
  final void Function() goToStat;
  const StatisticButton({super.key, required this.goToStat});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: goToStat,
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Text(
          'Show Statistic!',
          style: GoogleFonts.anton(
            color: Colors.black87,
            fontSize: 31,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
