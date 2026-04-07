import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Câu 3 - Settings Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'MSSV: 6451071018',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 30),
            const Text(
              'Đây là màn hình Cài đặt',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            
            // Nút Back theo yêu cầu bài toán
            ElevatedButton(
              onPressed: () {
                // Đóng màn hình hiện tại và xoá khỏi Stack
                Navigator.pop(context);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}