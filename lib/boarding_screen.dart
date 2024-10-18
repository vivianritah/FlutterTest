import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0), // Padding on both sides
        child: SingleChildScrollView(
          // Scrollable container
          child: Column(
            children: [
              const SizedBox(height: 60.0), // Top spacing
              Image.asset(
                'assets/images/lady2.png', // Replace with your image path
                height: 300.0, // Set image height
              ),
              const SizedBox(height: 40.0), // Spacing between image and text
              const Text(
                'Order in the mobile app',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                  height: 20.0), // Spacing between title and subtitle
              Text(
                'Choose clothes online from home and place an order. Get bonuses!',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40.0), // Spacing before button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NextPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 80.0), // Adjust button padding
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 30.0), // Bottom spacing
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wembabazi Vivian'),
      ),
      body: const Center(
        child: Text('Am in cohort three'),
      ),
    );
  }
}
