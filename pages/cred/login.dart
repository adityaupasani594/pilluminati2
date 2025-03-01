import 'package:flutter/material.dart';
import 'package:pilluminati/custom/mytextfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final pass = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.shade700,
                        blurRadius: 5,
                        offset: Offset(5, 5)
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  CustomTextField(hintText: 'Email', controller: email),
                  CustomTextField(hintText: 'Password', controller: pass)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

