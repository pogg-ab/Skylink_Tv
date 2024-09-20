import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class WatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/skylink_img.jpg', // Use your logo here
            height: 24.0,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          'Sky link Tv',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Search functionality (if any) can be implemented here
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              // Notification functionality (if any) can be implemented here
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {
              // Navigate to login screen or other functionality
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white, // Body background set to white
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          padding: EdgeInsets.only(top: 16.0),
          children: [
            // Live Photo Section
            Container(
              margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors
                    .grey[200], // Light grey background for live photo section
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12.0)),
                    child: Image.asset(
                      'assets/images/img2.jpeg', // Replace with actual live photo asset
                      width: double.infinity,
                      height: 220.0, // Increased height for live photo
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Live Stream Description',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors
                                .black, // Changed to black for better contrast
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '10 minutes ago',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Next Live Section
            Container(
              margin: EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors
                    .grey[200], // Light grey background for next live section
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Next Live in 10 min',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors
                                  .black, // Changed to black for better contrast
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Description of the next live event.',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Image.asset(
                      'assets/images/img1.jpeg', // Logo image
                      width: 60.0, // Smaller width for the logo
                      height: 60.0, // Smaller height for the logo
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),

            // Latest Videos Section
            Text(
              'Latest Videos',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              height: 260.0, // Increased height for the video section
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildVideoThumbnail(
                      'assets/images/img1.jpeg', 'Video 1 Description'),
                  _buildVideoThumbnail(
                      'assets/images/img2.jpeg', 'Video 2 Description'),
                  _buildVideoThumbnail(
                      'assets/images/img3.jpeg', 'Video 3 Description'),
                  _buildVideoThumbnail(
                      'assets/images/img4.jpeg', 'Video 4 Description'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget _buildVideoThumbnail(String imageUrl, String description) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Light grey background for video thumbnail
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
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
            child: Image.asset(
              imageUrl,
              width: 160.0, // Increased width for video thumbnail
              height: 180.0, // Increased height for video thumbnail
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
