import 'package:flutter/material.dart';

class StatisticButton extends StatelessWidget {
  final void Function() goToStat;
  const StatisticButton({super.key, required this.goToStat});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: goToStat,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          'Show Statistic!',
          style: TextStyle(
              color: Colors.purple.shade900,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
