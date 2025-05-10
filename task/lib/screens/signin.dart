import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../wigets/icon.dart';
import '../wigets/textfield.dart';
import '../wigets/button.dart';
import '../screens/register.dart';
import '../wigets/divider.dart';
import '../screens/homepage.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Row with Icon and Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Iconwidget(
                      cHeight: height * 0.05,
                      cWidth: width * 0.15,
                      iconSize: width * 0.08,
                      bradius: width * 0.03,
                    ),
                    const SizedBox(width: 10),
                    Text("Rent Cash",
                    style: GoogleFonts.raleway(
                       fontSize: width*0.07,
                      fontWeight: FontWeight.bold,
                    ),
                    )
                  ],
                ),

                 SizedBox(height: height * 0.03),
                Text(
                  "Welcome to Rent Cash!",
                  style: GoogleFonts.raleway(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "Enter your email to sign up for this app",
                  style: GoogleFonts.raleway(
                    fontSize: width*0.04,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 30),
                
                Textfieldwidget(hinttext: "email@domain.com"),
                const SizedBox(height: 15),
                Textfieldwidget(hinttext: "password", obscureText: true,),

                const SizedBox(height: 25),

                Buttonwidget(
                  text: "Sign In",
                  tcolor: Colors.white,
                  bradius: width*0.02,
                  gradient: const LinearGradient(
                    colors: [Color(0xFFA0DAFB), Color(0xFF0A8ED9)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomepageScreen(),));
                  },
                ),

                const SizedBox(height: 20),

                // Divider
                Dividerwidget(text: "or continue with"),
                const SizedBox(height: 20),

                // Register Button
                Buttonwidget(
                  color: Color(0x80EEEEEE),
                  tcolor: Colors.black54,
                  text: "Register",
                  bradius: width*0.02,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                  },
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
