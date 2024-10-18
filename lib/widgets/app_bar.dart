import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Image.asset('assets/images/utube.png',
              height: 32), // Add your logo asset
          Spacer(),
          Icon(Icons.cast, color: Colors.black),
          SizedBox(width: 20),
          Icon(Icons.notifications, color: Colors.black),
          SizedBox(width: 20),
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 20),
          CircleAvatar(
            backgroundColor: Colors.purple,
            child: Text('W'), // Initial or Profile Image
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
