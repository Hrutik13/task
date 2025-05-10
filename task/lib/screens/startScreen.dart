
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../wigets/icon.dart';
import '../screens/signin.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Navigate to the next screen after a delay
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SigninScreen()), // Navigate to your home screen
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.05),
            Iconwidget(
              cHeight: height * 0.11,
              cWidth: width * 0.25,
              iconSize: width * 0.15,
              bradius: width*0.05,
            ),
            SizedBox(height: height * 0.01),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Rent ',
                    style: GoogleFonts.raleway(
                      fontSize: width * 0.17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'Cash',
                    style: GoogleFonts.raleway(
                      fontSize: width * 0.17,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Text("Elevate Maintence Exellence",
              style: GoogleFonts.raleway(
                color: Colors.black,
                fontSize: width*0.04,
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

