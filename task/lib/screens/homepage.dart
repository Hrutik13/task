import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/screens/signin.dart';
import '../wigets/icon.dart';
import '../wigets/button.dart';
import '../wigets/flottingAppbar.dart';
import '../wigets/listTiles.dart';
import '../wigets/bottomBar.dart';
class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children:[ Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * 0.8,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFA0DAFB),
                          Color(0xFF0A8ED9),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(width * 0.05),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row with greeting and logout icon
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "hello hrutik",
                                style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: width * 0.045,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => SigninScreen()),
                                  );
                                },
                                child: const Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Welcome Back",
                            style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Iconwidget(
                                cHeight: height * 0.09,
                                cWidth: width * 0.1,
                                iconSize: width * 0.06,
                                bradius: width * 0.02,
                              ),
                              const SizedBox(width: 7),
                              Text("Rent Cash",
                                style: GoogleFonts.raleway(
                                  fontSize: width*0.07,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 7),
                          Align(
                            alignment: Alignment.center,
                            child: Text("INR 4,50,000",
                              style: GoogleFonts.raleway(
                                fontSize: width*0.08,
                                color: Colors.white
                              ),
                            ),
                          ),
        
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 7, bottom: 7),
                              child: Buttonwidget(
                               // color: Colors.white,
                                  tcolor: Colors.blue,
                                  text:"Apply Now",
                                  bradius: width*0.02,
                                bwidth: width*0.4,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text("Pre.Approved Disbursed in 30 Minutes ",
                              style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height*0.1,left: width*0.05,right: width*0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Party Name",
                          style: GoogleFonts.raleway(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      Text("Loan Amount",
                          style: GoogleFonts.raleway(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                Listtiles(),
                Listtiles(),
                Listtiles(),
                Listtiles(),
                Listtiles(),
                Listtiles(),

              ],
            ),
              Positioned(
                top: height * 0.7,
                left: width*0.1,
                right: width*0.1,
                child: const FloatingAppbar(),
              ),
        
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

