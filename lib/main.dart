import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:messenger_rep/modules/login_screen.dart';

import 'shared/bloc_0bsever.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      // home:MessengerScreen(),
        home:LoginScreen(),
      // home: UserScreen(),
    );
  }
}