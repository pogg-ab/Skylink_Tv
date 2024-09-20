import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/watch_screen.dart';
import '../screens/topics_screen.dart';
import '../screens/profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white, // Set background color to white
      selectedItemColor: Colors.black, // Color of the selected item
      unselectedItemColor: Colors.grey, // Color of the unselected items
      selectedLabelStyle:
          TextStyle(color: Colors.black), // Text color of selected item
      unselectedLabelStyle:
          TextStyle(color: Colors.grey), // Text color of unselected items
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.public,
              color: Colors.black), // Set icon color to black
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tv, color: Colors.black), // Set icon color to black
          label: 'Watch',
        ),
        BottomNavigationBarItem(
          icon:
              Icon(Icons.list, color: Colors.black), // Set icon color to black
          label: 'Topics',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person,
              color: Colors.black), // Set icon color to black
          label: 'Profile',
        ),
      ],
      onTap: (index) {
        // Handle screen navigation
        switch (index) {
          case 0:
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
            break;
          case 1:
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => WatchScreen()));
            break;
          case 2:
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => TopicsScreen()));
            break;
          case 3:
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ProfileScreen()));
            break;
        }
      },
    );
  }
}
