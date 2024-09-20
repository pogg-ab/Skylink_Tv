// lib/screens/account_screen.dart
import 'login_screen.dart';
import 'change_password_screen.dart';
import 'personal_info_screen.dart';
import 'faq_screen.dart'; // Import the FAQ screen
import 'maintenance_screen.dart'; // Import the Maintenance screen
import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Account',
            style: TextStyle(color: Colors.black, fontSize: 28)),
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 32),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
        child: Column(
          children: [
            // Profile Section
            Column(
              children: [
                // Profile Icon
                Icon(Icons.account_circle, size: 90.0, color: Colors.black),
                SizedBox(height: 30.0),

                // User Name
                Text('John Doe',
                    style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(height: 10.0),

                // User Email
                Text('john.doe@example.com',
                    style: TextStyle(fontSize: 22.0, color: Colors.grey[700])),
              ],
            ),
            SizedBox(height: 50.0),

            // Divider
            Divider(color: Colors.grey[300], thickness: 2),
            SizedBox(height: 40.0),

            // Account Options
            Expanded(
              child: ListView(
                children: [
                  _buildMenuOption(context,
                      icon: Icons.person,
                      title: 'Personal Information', onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersonalInfoScreen()));
                  }),
                  _buildMenuOption(context,
                      icon: Icons.lock, title: 'Change Password', onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangePasswordScreen()));
                  }),
                  _buildMenuOption(context,
                      icon: Icons.notifications,
                      title: 'Notifications', onTap: () {
                    // Navigate to Notifications Settings Screen
                  }),
                  _buildMenuOption(context,
                      icon: Icons.help, title: 'Help & Support', onTap: () {
                    // Navigate to Help & Support Screen
                  }),
                  _buildMenuOption(context,
                      icon: Icons.question_answer, title: 'FAQ', onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FAQScreen()));
                  }),
                  _buildMenuOption(context,
                      icon: Icons.build, title: 'Maintenance', onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MaintenanceScreen()));
                  }),
                ],
              ),
            ),

            // Logout Button
            SizedBox(
              width: 200, // Decreased width
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                child: Text('Logout',
                    style:
                        TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build menu options
  Widget _buildMenuOption(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5)
            ],
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.black, size: 36),
              SizedBox(width: 30.0),
              Expanded(
                  child: Text(title,
                      style: TextStyle(fontSize: 26.0, color: Colors.black))),
              Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 36),
            ],
          ),
        ),
      ),
    );
  }
}
