import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/screens/signin.dart';
import '../wigets/icon.dart';
import '../wigets/textfield.dart';
import '../wigets/button.dart';
import '../wigets/divider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Row with Icon and Text
                SizedBox(height: height*0.1),
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

                const SizedBox(height: 30),
                Text(
                  "Create an Account!",
                  style: GoogleFonts.raleway(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "Create account to explore your dream place",
                  style: GoogleFonts.raleway(
                    fontSize: width*0.04,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 30),
                
                Textfieldwidget(hinttext: "Enter Your Name"),
                SizedBox(height: height*0.02),
                Textfieldwidget(hinttext: "Phone Number",keyboardType: TextInputType.phone,),
                SizedBox(height: height*0.02),
                Textfieldwidget(hinttext: "Email",keyboardType: TextInputType.emailAddress,),
                SizedBox(height: height*0.02),
                Textfieldwidget(hinttext: "Password",obscureText: true,),
                SizedBox(height: height*0.02),
                Textfieldwidget(hinttext: "Confirm Password",obscureText: true,),
                SizedBox(height: height*0.02),
                Buttonwidget(
                    tcolor: Colors.white,
                    text: "Register",
                    bradius: width*0.02,
                  gradient: const LinearGradient(
                    colors: [Color(0xFFA0DAFB), Color(0xFF0A8ED9)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  onPressed: () {
                    // Action
                  },
                ),
                SizedBox(height: 20),
                Dividerwidget(text: "or continue with"),
                SizedBox(height: 20),
                Buttonwidget(
                  color: Color(0x80EEEEEE),
                  tcolor: Colors.black54,
                  text: "Log In",
                  bradius: width*0.02,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SigninScreen(),));
                  },
                )
              ],
            ),
          ),
        ),
    );
  }
}
