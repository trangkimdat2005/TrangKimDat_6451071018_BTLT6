import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Nhận dữ liệu được truyền sang từ route (Ép kiểu về String)
    final username = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Câu 2 - Profile Screen'),
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
            
            // Hiển thị tên người dùng đã nhận được
            Text(
              'Xin chào, ${username ?? "Khách"}!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
            const SizedBox(height: 10),
            const Text(
              'Đây là trang Profile của bạn.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}