import 'package:flutter/material.dart';
import '../widgets/comment_section.dart';

class SingleVideoPage extends StatelessWidget {
  final List<String> comments = [
    'Awesome content!',
    'Keep it up!',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video',
            style: TextStyle(color: Colors.black)), // Header text color
        backgroundColor: Colors.white, // Header background color
        iconTheme:
            IconThemeData(color: Colors.black), // Icons color in the header
      ),
      body: Container(
        color: Colors.white, // Set the background color to white
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/img2.jpeg',
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
                    'Video Title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black, // Title color set to black
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '10K likes • 2K comments',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14.0,
                    ),
                  ),
                  Divider(color: Colors.grey), // Updated divider color
                  Text(
                    'Latest Videos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors
                          .black, // Latest videos section title color set to black
                    ),
                  ),
                  SizedBox(height: 10.0),
                  _buildLatestVideo('Video 1', 'assets/images/img3.jpeg'),
                  _buildLatestVideo('Video 2', 'assets/images/img4.jpeg'),
                  _buildLatestVideo('Video 3', 'assets/images/img2.jpeg'),
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

  Widget _buildLatestVideo(String title, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0), // Added border radius
            child: Image.asset(
              imageUrl,
              width: 100.0,
              height: 60.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.black, // Title color set to black
              ),
            ),
          ),
        ],
      ),
    );
  }
}
