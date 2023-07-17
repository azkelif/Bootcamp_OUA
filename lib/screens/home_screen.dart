import 'package:chargevapp/widgets/navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'hom_screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: const Color(0xff4280ef)),
              child: Center(
                child: Text(
                  'ChargEV',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text(
                'Ana Sayfa',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff787878),
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.add_alarm_sharp,
              ),
              title: const Text(
                'Şarj Planlama',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff787878),
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.flutter_dash_outlined),
              title: const Text(
                'Mesafe Planlama',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff787878),
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.gamepad_outlined,
              ),
              title: const Text('Yönlendirme',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff787878),
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(
                Icons.book,
              ),
              title: const Text('Hakkımda',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff787878),
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(
                Icons.business_sharp,
              ),
              title: const Text('Mobil Şarj',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff787878),
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(
                Icons.today,
              ),
              title: const Text('Bugün Ne Var?',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff787878),
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
        title: const Text(
          "chargEV",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: const Image(
          image: NetworkImage(
              'https://www.pngmart.com/files/4/Tesla-PNG-Image.png'),
        ),
      ),
    );
  }
}
