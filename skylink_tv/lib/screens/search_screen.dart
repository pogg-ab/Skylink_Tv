import 'package:flutter/material.dart';
import '../widgets/search_item.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: List.generate(
          10,
          (index) => SearchItem(
            title: 'Football Headline',
            description: 'Vinicius on the top score vin vini vini',
            imageUrl: 'assets/images/player.jpg',
          ),
        ),
      ),
    );
  }
}
