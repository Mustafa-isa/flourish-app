
import 'package:flourish/Pages/Login.dart';
import 'package:flourish/Pages/Register.dart';
import 'package:flourish/Pages/Route.dart';
import 'package:flourish/Pages/Welcom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
initialRoute: "/welcome",
      routes: {
        "/":(context) => RegisterScreen(),
        "/login":(context) => LoginScreen(),
            "/welcome":(context) => Welcome(),
        "/route":(context) => RoutePage()
      },
    
    );
  }
}

