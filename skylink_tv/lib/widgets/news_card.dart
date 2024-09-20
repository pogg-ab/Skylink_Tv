import 'package:flutter/material.dart';
import 'live_tag.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String timeAgo;
  final String imageUrl;
  final bool isLive;

  NewsCard({required this.title, required this.timeAgo, required this.imageUrl, this.isLive = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(imageUrl),
              if (isLive) Positioned(top: 10, left: 10, child: LiveTag()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              timeAgo,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
