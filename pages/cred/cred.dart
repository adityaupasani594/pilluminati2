import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_coloured_buttons/gradient_coloured_buttons.dart';

class Cred extends StatelessWidget {
  const Cred({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*0.6,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(tag: 'logo', child: Image.asset("assets/logo.png",height: 130,width: 130,),),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Do you have an\naccount already?',
                  style: GoogleFonts.nunito(
                    fontSize: 33,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                GradientButton(
                  gradientColors: [
                    Colors.blue,Colors.blue
                  ],
                  textStyle: GoogleFonts.sigmar(
                    color: Colors.white,
                    fontSize: 23
                  ),
                    text: 'Yes!', onPressed: (){
                    Navigator.pushNamed(context, 'log');
                }),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                GradientButton(
                  gradientColors: [
                    Colors.blue,Colors.blue
                  ],
                    textStyle: GoogleFonts.sigmar(
                        color: Colors.white,
                        fontSize: 23
                    ),
                    text: 'No!', onPressed: (){
                      Navigator.pushNamed(context, 'reg');
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
