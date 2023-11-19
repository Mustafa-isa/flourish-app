import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.purple[900],
          child: Text("Contact Us", style: TextStyle(fontSize: 30, color: Colors.white),)
          ),
      ),
    );
  }
}