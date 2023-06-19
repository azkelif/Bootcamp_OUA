import 'package:chargev_app/widgets/appbar.dart';
import 'package:chargev_app/widgets/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chargEV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: navbar(),
    );
  }
}

