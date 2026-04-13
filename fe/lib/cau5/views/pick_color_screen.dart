import 'package:flutter/material.dart';

class PickColorScreen extends StatelessWidget {
  const PickColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Color'),
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
            
            // Nút Đỏ
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                // Đóng màn hình và trả về màu Đỏ
                Navigator.pop(context, Colors.red);
              },
              child: const Text('Red', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 15),

            // Nút Xanh lá
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                // Đóng màn hình và trả về màu Xanh lá
                Navigator.pop(context, Colors.green);
              },
              child: const Text('Green', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 15),

            // Nút Xanh dương
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                // Đóng màn hình và trả về màu Xanh dương
                Navigator.pop(context, Colors.blue);
              },
              child: const Text('Blue', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}