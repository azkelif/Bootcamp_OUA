import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text("chargEV"),
        centerTitle: true,
    );
  }
}