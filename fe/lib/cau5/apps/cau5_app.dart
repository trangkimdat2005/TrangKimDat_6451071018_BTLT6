import 'package:flutter/material.dart';
import '../views/home_screen.dart';

class Cau5App extends StatelessWidget {
  const Cau5App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Câu 5',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(), 
    );
  }
}