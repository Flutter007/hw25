import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hw25/screens/home_screen.dart';
import 'package:hw25/screens/result_screen.dart';
import 'package:hw25/screens/statistic_screen.dart';
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
  bool isLost = false;
  int countTie = 0;
  int countLose = 0;
  int countWin = 0;

  var currentScreen = 'home';
  void goToRes(String action) {
    setState(() {
      var randInx = Random().nextInt(3);
      currentScreen = 'results';
      selectedAction = action;
      opponentAction = actions[randInx];
      if (selectedAction == opponentAction) {
        result = 'Tie';
        countTie++;
      } else if ((action == 'Paper!' && opponentAction == 'Rock!') ||
          (action == 'Scissors!' && opponentAction == 'Paper!') ||
          (action == 'Rock!' && opponentAction == 'Scissors!')) {
        result = 'You won!';
        countWin++;
      } else {
        result = 'You lose!';
        isLost = true;
        countLose++;
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

  void goToStatist() {
    setState(() {
      currentScreen = 'stat';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;
    if (currentScreen == 'results') {
      screen = ResultScreen(
        goToStat: goToStatist,
        selectedAct: selectedAction,
        opponentAct: opponentAction,
        result: result,
        isLost: isLost,
      );
    } else if (currentScreen == 'stat') {
      screen = StatisticScreen(
          countWin: countWin,
          countLose: countLose,
          countTie: countTie,
          restartGame: goHome);
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
