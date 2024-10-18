// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Horizontal Category List
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCategory('All'),
                  _buildCategory('Music'),
                  _buildCategory('Movies'),
                  _buildCategory('Gaming'),
                  _buildCategory('Trending'),
                ],
              ),
            ),

            // Shorts Section (Horizontally Scrollable)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Shorts',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Number of shorts
                itemBuilder: (context, index) {
                  return VideoCard(isShorts: true);
                },
              ),
            ),

            // Regular Videos Section (Vertically Scrollable)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Videos',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            ListView.builder(
              physics:
                  NeverScrollableScrollPhysics(), // Disables nested scrolling
              shrinkWrap: true, // Allows it to take only necessary space
              itemCount: 10, // Number of videos
              itemBuilder: (context, index) {
                return VideoCard(); // Regular vertical video cards
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(String category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(category),
        backgroundColor: Colors.grey[300],
      ),
    );
  }
}
