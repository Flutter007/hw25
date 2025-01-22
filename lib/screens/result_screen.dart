import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw25/widgets/statistic_button.dart';

class ResultScreen extends StatefulWidget {
  final void Function() goToStat;
  final String? selectedAct;
  final String? opponentAct;
  final String? result;
  final bool isLost;

  const ResultScreen({
    super.key,
    required this.goToStat,
    required this.selectedAct,
    required this.opponentAct,
    required this.result,
    required this.isLost,
  });

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(40)),
            child: Text(
              'Result : ${widget.result}\nYou : ${widget.selectedAct}\nOpponent : ${widget.opponentAct}',
              style: GoogleFonts.notoSans(
                color:
                    widget.isLost ? Colors.red.shade900 : Colors.green.shade900,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          StatisticButton(goToStat: widget.goToStat),
        ],
      ),
    );
  }
}
