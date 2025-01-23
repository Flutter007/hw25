import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw25/widgets/restart_button.dart';

class StatisticScreen extends StatefulWidget {
  final int countWin;
  final int countLose;
  final int countTie;
  final void Function() restartGame;
  const StatisticScreen({
    super.key,
    required this.countWin,
    required this.countLose,
    required this.countTie,
    required this.restartGame,
  });

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Number of defeats : ${widget.countLose}\nNumber of wins : ${widget.countWin}\nNumber of Ties : ${widget.countTie}',
            style: GoogleFonts.bebasNeue(
              color: Colors.black87,
              fontSize: 47,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 120),
          RestartButton(restartGame: widget.restartGame)
        ],
      ),
    );
  }
}
