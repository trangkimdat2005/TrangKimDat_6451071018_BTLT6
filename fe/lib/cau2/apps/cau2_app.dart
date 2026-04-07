import 'package:flutter/material.dart';

// Import các view của Câu 2
import '../views/home_screen.dart';
import '../views/profile_screen.dart';

class Cau2App extends StatelessWidget {
  const Cau2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Câu 2',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}