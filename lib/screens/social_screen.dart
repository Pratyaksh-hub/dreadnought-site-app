import 'package:flutter/material.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello",
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
      ),
    );
  }
}
