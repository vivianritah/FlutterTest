import 'package:flutter/material.dart';

class ListAndGridScreen extends StatelessWidget {
  // List of local asset paths for fruit images
  final List<String> imagePaths = [
    'assets/images/strawberry.jpg',
    'assets/images/banana.jpg',
    'assets/images/apples.jpg',
    'assets/images/orange.jpg',
    'assets/images/pineapple.jpg',
    'assets/images/grape.jpg',
    'assets/images/watermelon.jpg',
    'assets/images/mango.jpg',
    'assets/images/blueberry.jpg',
  ];

  // Corresponding list of fruit names
  final List<String> fruitNames = [
    'Strawberry',
    'Banana',
    'Apple',
    'Orange',
    'Pineapple',
    'Grape',
    'Watermelon',
    'Mango',
    'Blueberry',
  ];

  ListAndGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView and GridView with Fruits'),
      ),
      body: Column(
        children: [
          // ListView.builder in horizontal direction
          Container(
            height: 200.0, // Height for the horizontal ListView
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Image.asset(
                        imagePaths[index],
                        width: 150.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8.0),
                      Text(fruitNames[index]), // Use the fruit name here
                    ],
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20.0), // Space between ListView and GridView

          // GridView.builder in vertical direction
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of items per row
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3.0,
                  child: Column(
                    children: [
                      Image.asset(
                        imagePaths[index],
                        width: double.infinity,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Text(fruitNames[index]), // Use the fruit name here
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
