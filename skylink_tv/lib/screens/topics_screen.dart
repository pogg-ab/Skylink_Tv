import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart'; // Import the BottomNavBar widget

class TopicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set AppBar background color to white
        elevation: 0, // Remove default AppBar shadow
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/skylink_img.jpg', // Replace with your logo asset
            height: 24.0,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          'SKYLINK TV',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {
              // Navigate to account screen or other functionality
            },
          ),
        ],
        titleSpacing: 0, // To remove extra space between logo and title
      ),
      body: Container(
        color: Colors.white, // Set body background color to white
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Horizontal Line after Header
            Container(
              color: Color.fromARGB(
                  255, 245, 238, 238), // Light grey color for the line
              height: 2.0, // Line thickness
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 16.0),
            ),

            // Search Bar
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  hintText: 'Search...',
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),

            // Categories
            Expanded(
              child: ListView(
                children: [
                  _buildCategoryDiv('Category 1', 'Description for Category 1'),
                  _buildCategoryDiv('Category 2', 'Description for Category 2'),
                  _buildCategoryDiv('Category 3', 'Description for Category 3'),
                  _buildCategoryDiv('Category 4', 'Description for Category 4'),
                  _buildCategoryDiv('Category 5', 'Description for Category 5'),
                  _buildCategoryDiv('Category 6', 'Description for Category 6'),
                  _buildCategoryDiv('Category 7', 'Description for Category 7'),
                  // Add more categories as needed
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(), // Add the bottom navigation bar here
    );
  }

  Widget _buildCategoryDiv(String title, String description) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Light grey background for category divs
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Description
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/img1.jpeg', // Replace with actual image asset
              width: 80.0,
              height: 60.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
