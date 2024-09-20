import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  SearchItem({required this.title, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imageUrl),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        description,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
