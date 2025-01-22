import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hw25/screens/home_screen.dart';
import 'package:hw25/screens/result_screen.dart';
import 'package:hw25/widgets/decoraited_container.dart';

class Hw25 extends StatefulWidget {
  const Hw25({super.key});

  @override
  State<Hw25> createState() => _Hw25State();
}

class _Hw25State extends State<Hw25> {
  final List<String> actions = ['Rock!', 'Paper!', 'Scissors!'];
  String? selectedAction;
  String? opponentAction;
  String? result;

  var currentScreen = 'home';
  void goToRes(String action) {
    setState(() {
      var randInx = Random().nextInt(3);
      currentScreen = 'results';
      selectedAction = action;
      opponentAction = actions[randInx];
      if (selectedAction == opponentAction) {
        result = 'Tie';
      } else if ((action == 'Paper!' && opponentAction == 'Rock!') ||
          (action == 'Scissors!' && opponentAction == 'Paper!') ||
          (action == 'Rock!' && opponentAction == 'Scissors!')) {
        result = 'You won!';
      } else {
        result = 'You lose!';
      }
    });
  }

  void goHome() {
    setState(() {
      currentScreen = 'home';
      result = null;
      selectedAction = null;
      opponentAction = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;
    if (currentScreen == 'results') {
      screen = ResultScreen(
        goHome: goHome,
        selectedAct: selectedAction,
        opponentAct: opponentAction,
        result: result,
      );
    } else {
      screen = HomeScreen(
        goToRes: goToRes,
        namesOfAction: actions,
      );
    }
    return MaterialApp(
      home: DecoraitedContainer(child: screen),
    );
  }
}
