import 'package:flutter/material.dart';

class car extends StatefulWidget {
  const car({super.key});

  @override
  State<car> createState() => _carState();
}

class _carState extends State<car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("CAR")),);
  }
}