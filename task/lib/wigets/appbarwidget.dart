import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar customAppBar(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () => Navigator.pop(context),
    ),
    title: Align(
      alignment: Alignment.center,
      child: Text(
        title,
        style: GoogleFonts.inter(
          fontSize: MediaQuery.of(context).size.width * 0.042,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),

  );
}
