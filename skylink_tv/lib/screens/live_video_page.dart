import 'package:flutter/material.dart';
import '../widgets/comment_section.dart';

class LiveVideoPage extends StatelessWidget {
  final List<String> comments = [
    'Great video!',
    'Very informative!',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Video',
            style: TextStyle(color: Colors.black)), // Header text color
        backgroundColor: Colors.white, // Header background color
        iconTheme:
            IconThemeData(color: Colors.black), // Icons color in the header
        actions: [
          IconButton(
            icon: Icon(Icons.fullscreen),
            onPressed: () {
              // Handle full screen toggle here
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white, // Set the background color to white
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/skylink_img.jpg',
                  width: double.infinity,
                  height: 250.0,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 20.0,
                  left: 20.0,
                  child: Row(
                    children: [
                      _buildIconButton(Icons.play_circle_filled, onPressed: () {
                        // Handle play button
                      }),
                      SizedBox(width: 20.0),
                      _buildIconButton(Icons.thumb_up, onPressed: () {
                        // Handle like button
                      }),
                      _buildIconButton(Icons.comment, onPressed: () {
                        // Handle comment button
                      }),
                      _buildIconButton(Icons.bookmark, onPressed: () {
                        // Handle save button
                      }),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Text(
                    'Live Video Title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black, // Title color set to black
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '20K likes • 5K comments',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14.0,
                    ),
                  ),
                  Divider(color: Colors.grey), // Updated divider color
                  Text(
                    'Comments',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors
                          .black, // Comments section title color set to black
                    ),
                  ),
                  SizedBox(height: 10.0),
                  CommentSection(comments: comments),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, {required VoidCallback onPressed}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7), // Button background color
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}
