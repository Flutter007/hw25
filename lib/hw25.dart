import 'package:flutter/material.dart';
import 'package:hw25/screens/home_screen.dart';
import 'package:hw25/widgets/decoraited_container.dart';

class Hw25 extends StatefulWidget {
  const Hw25({super.key});

  @override
  State<Hw25> createState() => _Hw25State();
}

class _Hw25State extends State<Hw25> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DecoraitedContainer(child: HomeScreen(goToRes: () {})),
    );
  }
}
