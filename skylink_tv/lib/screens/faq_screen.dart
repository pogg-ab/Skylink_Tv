// lib/screens/faq_screen.dart
import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('FAQ', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FAQ List
            Expanded(
              child: ListView(
                children: [
                  _buildFAQItem('What is Skylink TV?',
                      'Skylink TV is a streaming service that offers a variety of shows and movies.'),
                  _buildFAQItem('How can I reset my password?',
                      'You can reset your password by going to the login screen and clicking on "Forgot Password".'),
                  _buildFAQItem('What payment methods do you accept?',
                      'We accept all major credit cards and PayPal.'),
                  // Add more FAQs here
                ],
              ),
            ),
            SizedBox(height: 20),
            // Ask a Question
            TextField(
              decoration: InputDecoration(
                labelText: 'Ask a Question',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle the question submission
              },
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Change as needed
                onPrimary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQItem(String question, String answer) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ExpansionTile(
        title:
            Text(question, style: TextStyle(color: Colors.black, fontSize: 18)),
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(answer, style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
