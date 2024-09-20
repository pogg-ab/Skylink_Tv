import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white, // Set header background color to white
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavBar(), // Adding the Bottom Navigation Bar
      body: Container(
        color: Colors.white, // Set body background color to white
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

            // Terms and Conditions Checkbox
            Row(
              children: [
                Checkbox(
                  value: false, // Default value
                  onChanged: (bool? value) {
                    // Handle checkbox state change
                  },
                ),
                Expanded(
                  child: Text(
                    'Agree to the terms and conditions from Skylink TV so ready to join',
                    style: TextStyle(
                        color: Colors
                            .black), // Changed color to fit the new design
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),

            // Sign Up Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Button color
                  onPrimary: Color(0xFF21C3E6), // Button text color
                  side: BorderSide(color: Colors.grey), // Button border color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  // Handle Sign Up logic here
                },
              ),
            ),
            SizedBox(height: 15),

            // Already have an account? Sign In Text
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Already have an account? Sign In',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black, // Changed color to fit the new design
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
