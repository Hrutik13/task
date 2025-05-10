
import 'package:flutter/material.dart';
import 'package:task/wigets/appbarwidget.dart';
import '../wigets/bottomBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: customAppBar(context, "Profile"),
      body: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(horizontal: height*0.04),
        child: Column(
          children: [
             SizedBox(height: height*0.1),
            // Circular image
            ClipOval(
              child: Image.asset(
                'assets/image.jpg',
                width: width*0.3,
                height: height*0.3,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            // Edit profile image text
            TextButton(
              onPressed: () {
                // Handle image edit
              },
              child: const Text(
                "Edit profile image",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Profile Info
            _profileRow("Name", "Helena Hills"),
            _profileRow("Username", "@username"),
            _profileRow("Email", "name@domain.com"),
            _profileRow("Phone Number", " +91 9854756325\n +91 8796523545"),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  Widget _profileRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: Text(title, style: const TextStyle(fontSize: 16))),
          Expanded(
            flex: 4,
            child: Text(value, style: const TextStyle(fontSize: 16)),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}
