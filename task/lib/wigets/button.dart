import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttonwidget extends StatelessWidget {
  final Gradient? gradient; // Nullable gradient
  final Color? color; // Fallback solid color
  final Color tcolor;
  final String text;
  final double bradius;
  final VoidCallback? onPressed;
  final double bwidth;

  const Buttonwidget({
    super.key,
    this.gradient,
    this.color,
    required this.tcolor,
    required this.text,
    required this.bradius,
    this.onPressed,
    this.bwidth = double.infinity, // Default width
  });

  @override
  Widget build(BuildContext context) {
    final hasGradient = gradient != null;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: bwidth,
      decoration: BoxDecoration(
        color: hasGradient ? null : color ?? Colors.white,
        gradient: gradient,
        borderRadius: BorderRadius.circular(bradius),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: hasGradient ? Colors.transparent : (color ?? Colors.white),
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(bradius),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.w500,
            fontSize: width * 0.04,
            color: tcolor,
          ),
        ),
      ),
    );
  }
}
