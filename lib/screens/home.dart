import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(

          elevation: 0,
          backgroundColor: Colors.grey[300],
          title: Text(
            "chargEV",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
      ),
      body: Center(child: Text("HOME")),
    );
  }
}