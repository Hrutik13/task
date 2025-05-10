import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/addProperty.dart'; // Make sure this file exists

class FloatingAppbar extends StatelessWidget {
  const FloatingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _floatingItem(
            context,
            Icons.add_circle,
            "Add\nProperty",
                () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddpropertyScreen())),
          ),
          _floatingItem(
            context,
            Icons.remove_circle,
            "Remove\nProperty",
                () {},
          ),
          _floatingItem(
            context,
            Icons.wallet,
            "Statement",
                () {},
          ),
          _floatingItem(
            context,
            Icons.settings,
            "Settings",
                () {},
          ),
        ],
      ),
    );
  }

  Widget _floatingItem(
      BuildContext context, IconData icon, String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 26, color: Colors.blue),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.raleway(fontSize: 10, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
