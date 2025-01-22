import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw25/widgets/action_button.dart';

class HomeScreen extends StatelessWidget {
  final void Function(String) goToRes;
  final List<String> namesOfAction;
  const HomeScreen(
      {super.key, required this.goToRes, required this.namesOfAction});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/game.png',
            width: 300,
            height: 200,
          ),
          Text(
            textAlign: TextAlign.center,
            "Let's play\nSelect your action!",
            style: GoogleFonts.aboreto(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                wordSpacing: 9),
          ),
          for (var action in namesOfAction)
            ActionButton(doAction: goToRes, nameOfAction: action),
        ],
      ),
    );
  }
}
