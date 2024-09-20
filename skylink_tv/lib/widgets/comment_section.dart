import 'package:flutter/material.dart';

class CommentSection extends StatelessWidget {
  final List<String> comments;

  CommentSection({required this.comments});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int index = 0; index < comments.length; index++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              comments[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        // Add additional UI elements for adding comments, if needed
      ],
    );
  }
}
