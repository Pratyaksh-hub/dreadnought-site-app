import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dreadnaught_app/screens/social_screen.dart';
import 'package:dreadnaught_app/screens/student_screen.dart';
import 'package:flutter/material.dart';

import 'about_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [
    const AboutScreen(),
    const SocialScreen(),
    const StudentScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    int index = 1;

    final navigationkey = GlobalKey<CurvedNavigationBarState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: const Text(
          'Dreadnaught',
          style: TextStyle(fontSize: 30),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          onTap: (index) {
            setState(() {
              index = index;
              final navigationstate = navigationkey.currentState;
              navigationstate?.setPage(0);
            });
          },
          backgroundColor: Colors.white,
          color: Colors.blue.shade700,
          buttonBackgroundColor: Colors.blue.shade700,
          items: const <Widget>[
            Icon(Icons.verified_user, size: 30),
            Icon(Icons.person, size: 30),
            Icon(Icons.favorite, size: 30),
          ],
          height: 60,
          index: index,
        ),
      ),
      body: screens[index],
    );
  }
}
