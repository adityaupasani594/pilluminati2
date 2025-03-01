import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pilluminati/pages/cred/cred.dart';
import 'package:pilluminati/pages/cred/login.dart';
import 'package:pilluminati/pages/cred/reg.dart';
import 'package:pilluminati/pages/landing.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'c':(context)=>Cred(),
        'log':(context)=>Login(),
        'reg':(context)=>Reg()
      },
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
