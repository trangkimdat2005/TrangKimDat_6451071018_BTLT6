import 'package:flutter/material.dart';
// Chỉ cần import HomeScreen là đủ vì chúng ta sẽ chuyển trang trực tiếp
import '../views/home_screen.dart';

class Cau3App extends StatelessWidget {
  const Cau3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Câu 3',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      
      // Không dùng routes, gán trực tiếp HomeScreen vào thuộc tính home
      home: const HomeScreen(), 
    );
  }
}