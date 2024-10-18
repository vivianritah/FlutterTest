// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/ecommerce.dart';
// // ignore: unused_import
// import 'package:flutter_application_1/list_view.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const HomeScreen2(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const YouTubeHomePageApp());
}

class YouTubeHomePageApp extends StatelessWidget {
  const YouTubeHomePageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // Dark theme like YouTube
      home: HomeScreen(),
    );
  }
}
