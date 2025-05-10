import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../wigets/appbarwidget.dart';
import '../wigets/textfield.dart';
import '../wigets/dateTextField.dart';
import '../wigets/bottomBar.dart';
import '../wigets/button.dart';


class AddpropertyScreen extends StatefulWidget {
  const AddpropertyScreen({super.key});

  @override
  State<AddpropertyScreen> createState() => _AddpropertyScreenState();
}

class _AddpropertyScreenState extends State<AddpropertyScreen> {
  String propertyType = 'Residential'; // Default selected value

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: customAppBar(context, "Add Property"),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.post_add,
                  size: height * 0.15,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio<String>(
                    value: 'Residential',
                    groupValue: propertyType,
                    onChanged: (value) {
                      setState(() {
                        propertyType = value!;
                      });
                    },
                  ),
                  Text('Residential',
                      style: GoogleFonts.raleway(fontSize: 14)),

                  const SizedBox(width: 20),

                  Radio<String>(
                    value: 'Commercial',
                    groupValue: propertyType,
                    onChanged: (value) {
                      setState(() {
                        propertyType = value!;
                      });
                    },
                  ),
                  Text('Commercial',
                      style: GoogleFonts.raleway(fontSize: 14)),
                ],
              ),
              SizedBox(height: 10,),
              Textfieldwidget(hinttext:"Name of the Tenant",filled: true,),
              SizedBox(height: 15,),
              Textfieldwidget(hinttext: "Phone No.",keyboardType: TextInputType.phone,filled: true,),
              SizedBox(height: 15,),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width*0.4,
                      child: Datetextfield(hinttext: "start date",isDate: true,)
                  ),
                  SizedBox(
                    width: width*0.4,
                      child: Datetextfield(hinttext: "End date",isDate: true,)
                  )
                ],
              ),
              SizedBox(height: 15,),
              Textfieldwidget(hinttext: "Monthly Rent",keyboardType: TextInputType.number,filled: true,),
              SizedBox(height: 15,),
              Textfieldwidget(
                hinttext: "Upload Agreement",
                filled: true,
                suffixIcon: Icon(
                    Icons.drive_folder_upload,
                  color: Colors.blue,
              ),
              ),
              SizedBox(height: 15,),
              Textfieldwidget(hinttext: "Address", filled: true,maxLines: 3,),
              SizedBox(height: 15,),
              Buttonwidget(
                  tcolor: Colors.white,
                  text: "Add Property ",
                  bradius: width*0.02,
                gradient: const LinearGradient(
                  colors: [Color(0xFFA0DAFB), Color(0xFF0A8ED9)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
