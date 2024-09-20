import 'package:flutter/material.dart';
import 'sign_up_screen.dart';
import 'login_screen.dart';
import '../widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white, // Set header background color to white
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavBar(),
      body: Container(
        color: Colors.white, // Set body background color to white
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Move content up
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60), // Add space above the profile icon

            // Large Profile Icon
            Icon(
              Icons.account_circle,
              size: 120.0,
              color: Colors.black, // Changed color to fit the new design
            ),
            SizedBox(height: 20),

            // Description Text
            Text(
              'Enrich your Skylink TV:\nExperience by creating an account.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black, // Changed color to fit the new design
              ),
            ),
            SizedBox(height: 20), // Adjusted space below the description

            // Sign Up Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
              ),
            ),
            SizedBox(height: 40), // Increased space below the button

            // Already have an account? Sign In Text
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
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
