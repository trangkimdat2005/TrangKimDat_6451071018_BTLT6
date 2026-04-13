import 'package:flutter/material.dart';
// Import file App của Câu 1
import '../cau1/apps/cau1_app.dart';
import '../cau2/apps/cau2_app.dart';
import '../cau3/apps/cau3_app.dart';
import '../cau4/apps/cau4_app.dart';
import '../cau5/apps/cau5_app.dart';

class MainMenuApp extends StatelessWidget {
  const MainMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tổng hợp Bài tập',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const MenuScreen(), // Đặt MenuScreen làm trang chủ
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách Bài Tập'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Center(
            child: Text(
              'MSSV: 6451071018',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold, 
                color: Colors.red
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // Mở App của Câu 1 lên đè lên Menu
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cau1App()),
              );
            },
            child: const Text('Vào Câu 1: Home → About'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Mở App của Câu 2
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cau2App()),
              );
            },
            child: const Text('Vào Câu 2: Home → Profile (Passing Data)'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cau3App()),
              );
            },
            child: const Text('Vào Câu 3: Home → Settings (Direct Route)'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cau4App()),
              );
            },
            child: const Text('Vào Câu 4: List → Detail (Pass object)'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cau5App()),
              );
            },
            child: const Text('Vào Câu 5: Home ⇄ Pick Color (Return Data)'),
          ),
        ],
      ),
    );
  }
}