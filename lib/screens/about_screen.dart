import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Not okay',
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
      ),
    );
  }
}
