// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class Iconwidget extends StatelessWidget{
//   final double cHeight;
//   final double cWidth;
//   final double iconSize;
//
//   const Iconwidget({
//     Key?key,
//     required this.cHeight,
//     required this.cWidth,
//     required this.iconSize,
//   }):super(key: key);
//   @override
//   Widget build(BuildContext context){
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//         body:Container(
//             height: cHeight,
//             width: cWidth,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(width*0.5),
//               gradient: LinearGradient(
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft,
//                 colors: [
//                   Color(0xFFFDC830),
//                   Color(0xFFF37335)
//                 ],
//               ),
//             ),
//             child: Icon(Icons.home,
//               size: iconSize,
//               color: Colors.white,
//             ),
//           )
//
//     );
//   }
// }

import 'package:flutter/material.dart';

class Iconwidget extends StatelessWidget {
  final double cHeight;
  final double cWidth;
  final double iconSize;
  final double bradius;

  const Iconwidget({
    super.key,
    required this.cHeight,
    required this.cWidth,
    required this.iconSize,
    required this.bradius,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: cHeight,
      width: cWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(bradius),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFFDC830),
            Color(0xFFF37335),
          ],
        ),
      ),
      child: Icon(
        Icons.home,
        size: iconSize,
        color: Colors.white,
      ),
    );
  }
}
