// lib/screens/login_screen.dart

import 'package:flutter/material.dart';
import 'account_screen.dart'; // Import the AccountScreen
import '../widgets/bottom_nav_bar.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white, // White background for the AppBar
        elevation: 0,
      ),
      bottomNavigationBar:
          BottomNavBar(), // Maintaining the Bottom Navigation Bar
      body: Container(
        color: Colors.white, // White background for the body
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Email Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 16.0),

            // Password Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                fillColor: Colors.white,
                filled: true,
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),

            // Forgot Password Text
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Handle Forgot Password
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black, // Changed color to fit the new design
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // White background for the button
                  onPrimary: Color(0xFF21C3E6), // Button text color (blue)
                  side: BorderSide(color: Colors.grey), // Grey border
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(
                        0xFF21C3E6), // Ensuring text color matches onPrimary
                  ),
                ),
                onPressed: () {
                  // Handle Sign In logic here
                  // After successful sign-in, navigate to AccountScreen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => AccountScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
