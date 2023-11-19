import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.purple[900],
          child: Text("User Info product", style: TextStyle(fontSize: 30, color: Colors.white),)),
      ),
    );
  }
}