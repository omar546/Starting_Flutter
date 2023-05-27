import 'package:flutter/material.dart';
import 'package:messenger_rep/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext)
  {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      // home:MessengerScreen(),
        home:LoginScreen(),
    );
  }
}