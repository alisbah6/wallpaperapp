import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'register.dart';
import 'route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:ThemeData(
        primarySwatch: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=> LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.registerRoute:(context) => RegisterPage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }
}