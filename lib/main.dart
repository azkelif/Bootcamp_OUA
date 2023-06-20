import 'package:chargevapp/firebase_options.dart';
import 'package:chargevapp/widgets/appbar.dart';
import 'package:chargevapp/widgets/navbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

