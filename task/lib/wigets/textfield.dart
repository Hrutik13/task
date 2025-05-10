import 'package:flutter/material.dart';

class Textfieldwidget extends StatelessWidget {
  final String hinttext;
  final bool obscureText;
  final bool filled;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final int maxLines;

  const Textfieldwidget({
    super.key,
    this.filled = false,
    required this.hinttext,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hinttext,
        filled: filled,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black45), // normal state
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2), // focused state
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
