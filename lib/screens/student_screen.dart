import 'package:flutter/material.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Okay',
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
      ),
    );
  }
}
