import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButton extends StatelessWidget {
  final void Function(String) doAction;
  final String nameOfAction;
  const ActionButton(
      {super.key, required this.doAction, required this.nameOfAction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 160,
          height: 40,
          child: ElevatedButton.icon(
            onPressed: () => doAction(nameOfAction),
            label: Text(
              nameOfAction,
              style: GoogleFonts.aleo(fontSize: 20, color: Colors.yellowAccent),
            ),
            icon: Icon(
              Icons.check,
              color: Colors.green,
              size: 30,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black87,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
