import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.purple[900],
          child: Text("Home product", style: TextStyle(fontSize: 30, color: Colors.white),)),
      ),
    );
  }
}