import 'package:flutter/material.dart';
import '../screens/profile.dart';
import '../screens/homepage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  IconData centerIcon = Icons.home;
  IconData leftIcon = Icons.account_balance_wallet;
  IconData rightIcon = Icons.person;

  void _navigateAndSwap(IconData tappedIcon) {
    // Navigate to page
    if (tappedIcon == Icons.account_balance_wallet) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => const HomepageScreen()));
    } else if (tappedIcon == Icons.person) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
    }

    // Swap center icon with tapped one
    setState(() {
      if (tappedIcon == leftIcon) {
        final temp = centerIcon;
        centerIcon = leftIcon;
        leftIcon = temp;
      } else if (tappedIcon == rightIcon) {
        final temp = centerIcon;
        centerIcon = rightIcon;
        rightIcon = temp;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Background bar
        Padding(
          padding: EdgeInsets.symmetric(vertical: height * 0.03, horizontal: width * 0.01),
          child: Container(
            height: height * 0.15,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(width * 0.2)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(leftIcon, color: Colors.white, size: width * 0.08),
                  onPressed: () => _navigateAndSwap(leftIcon),
                ),
                const SizedBox(width: 40),
                IconButton(
                  icon: Icon(rightIcon, color: Colors.white, size: width * 0.08),
                  onPressed: () => _navigateAndSwap(rightIcon),
                ),
              ],
            ),
          ),
        ),
        // Center floating icon
        Positioned(
          bottom: height * 0.01,
          child: Container(
            height: height * 0.2,
            width: width * 0.2,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue, width: 10),
              ),
              child: IconButton(
                icon: Icon(centerIcon, color: Colors.blue),
                onPressed: () => _navigateAndSwap(centerIcon),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
