import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "Login page",
          style: TextStyle(
            fontSize: 40,
            color: Colors.amberAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
