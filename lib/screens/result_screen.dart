import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw25/widgets/restart_button.dart';

class ResultScreen extends StatefulWidget {
  final void Function() goHome;
  final String? selectedAct;
  final String? opponentAct;
  final String? result;

  const ResultScreen({
    super.key,
    required this.goHome,
    required this.selectedAct,
    required this.opponentAct,
    required this.result,
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
          Text(
            'Вы : ${widget.selectedAct}\nПротивник :${widget.opponentAct}\nРезультат:${widget.result}',
            style: GoogleFonts.notoSans(color: Colors.black87, fontSize: 30),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          RestartButton(restartGame: widget.goHome),
        ],
      ),
    );
  }
}
