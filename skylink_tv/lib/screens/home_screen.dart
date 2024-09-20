import 'package:flutter/material.dart';
import '../widgets/news_card.dart';
import '../widgets/bottom_nav_bar.dart';
import 'login_screen.dart';
import 'live_video_page.dart';
import 'single_video_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/skylink_img.jpg',
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          padding: EdgeInsets.only(top: 16.0),
          children: [
            _buildNewsCard(
              context: context,
              title:
                  'Netanyahu the main obstacle to achieving ceasefire deal: Hamas',
              timeAgo: '20 hours ago',
              imageUrl: 'assets/images/skylink_img.jpg',
              isLive: true,
              isFirstCard: true,
            ),
            _buildNewsCard(
              context: context,
              title: 'Discover how agriculture works in different regions',
              timeAgo: '10 minutes ago',
              imageUrl: 'assets/images/img2.jpeg',
              isLive: false,
            ),
            _buildNewsCard(
              context: context,
              title: 'How agriculture works in different regions',
              timeAgo: '21 minutes ago',
              imageUrl: 'assets/images/img3.jpeg',
              isLive: false,
            ),
            _buildNewsCard(
              context: context,
              title: 'Works in different regions',
              timeAgo: '16 minutes ago',
              imageUrl: 'assets/images/img4.jpeg',
              isLive: false,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget _buildNewsCard({
    required BuildContext context,
    required String title,
    required String timeAgo,
    required String imageUrl,
    required bool isLive,
    bool isFirstCard = false,
  }) {
    return GestureDetector(
      onTap: () {
        if (isLive) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LiveVideoPage()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SingleVideoPage()),
          );
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          color: const Color(
              0xFFD3D3D3), // Light grey color for news card background
          borderRadius: BorderRadius.circular(12.0),
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
          crossAxisAlignment:
              CrossAxisAlignment.start, // Aligns content to the start
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(12.0)),
                  child: Image.asset(
                    imageUrl,
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
                if (isLive)
                  Positioned(
                    top: 12.0,
                    left: 12.0,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                      color: Colors.red,
                      child: Text(
                        'Live Updates', // Changed from 'LIVE' to 'Live Updates'
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors
                          .black, // Title color set to black for visibility
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    timeAgo,
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
    );
  }
}
