import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listtiles extends StatelessWidget {
  const Listtiles({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return ListTile(

      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          'assets/building.jpg',
          width: width*0.2,
          height: height*0.2,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        'Atmosphere',
        style: GoogleFonts.raleway(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "INR 45,000 / Month",
            style: GoogleFonts.raleway(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),
          ),
          Row(
            children: [
              const Icon(Icons.calendar_month, size: 12, color: Colors.grey),
              const SizedBox(width: 4),
              Text(
                "24 Months Left",
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
      trailing: Text(
        "2,00,000",
        style: GoogleFonts.raleway(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}
