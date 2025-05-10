import 'package:flutter/material.dart';

class Dividerwidget extends StatelessWidget {

  final String text; // Solid color fallback

  const Dividerwidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {


    double width = MediaQuery.of(context).size.width;

    return   Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text( text,
              style: TextStyle(color: Colors.grey[600])),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
