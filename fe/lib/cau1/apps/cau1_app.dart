import 'package:flutter/material.dart';
// Import các view của Câu 1
import '../views/home_screen.dart';
import '../views/about_screen.dart';

class Cau1App extends StatelessWidget {
  const Cau1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Câu 1',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      
      // Các route này chỉ có tác dụng bên trong Cau1App
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}