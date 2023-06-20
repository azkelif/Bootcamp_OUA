import 'package:chargevapp/firebase_options.dart';
import 'package:chargevapp/screens/home_screen.dart';
import 'package:chargevapp/screens/login_screen.dart';
import 'package:chargevapp/screens/registration_screen.dart';
import 'package:chargevapp/widgets/navbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(chargev());
}

class chargev extends StatelessWidget {
  const chargev({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'chargEV',
      initialRoute: RegistrationScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}

