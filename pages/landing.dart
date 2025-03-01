import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_coloured_buttons/gradient_coloured_buttons.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/landing.png"),
            ),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              Hero(
                tag: 'logo',
                child: Image.asset(
                  "assets/logo.png",
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              Text(
                'MediMitra',
                style: GoogleFonts.nunito(
                    color: Colors.yellowAccent,
                    fontSize: 50,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                'Take a moment for\n       your future',
                style: GoogleFonts.merriweather(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.135,
              ),
              GradientButton(
                  textStyle:
                      GoogleFonts.sigmar(color: Colors.black, fontSize: 30),
                  borderRadius: 20,
                  gradientColors: [Colors.yellowAccent, Colors.orangeAccent],
                  text: 'Let\'s Go!',
                  onPressed: () {
                    Navigator.pushNamed(context, 'c');
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.175,
              ),
              Text(
                'A VESIT initiative',
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
