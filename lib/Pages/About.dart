import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.purple[900],
          child: Text("About Company", style: TextStyle(fontSize: 30, color: Colors.white),)),
      ),
    );
  }
}