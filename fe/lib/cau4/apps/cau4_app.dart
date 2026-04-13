import 'package:flutter/material.dart';
import '../views/home_screen.dart';

class Cau4App extends StatelessWidget {
  const Cau4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Câu 4',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(), 
    );
  }
}