import 'package:flutter/material.dart';
import 'pick_color_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Biến lưu trữ trạng thái màu hiện tại, mặc định là màu Xám
  Color _boxColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Câu 5 - Home Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'MSSV: 6451071018',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 40),
            
            // Box hiển thị màu hiện tại
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: _boxColor, // Sử dụng biến trạng thái ở đây
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black26, width: 2),
              ),
            ),
            const SizedBox(height: 30),

            ElevatedButton(
              // Thêm từ khoá async vì chúng ta cần chờ hành động chuyển trang
              onPressed: () async {
                // await: Tạm dừng code ở đây, mở PickColorScreen lên và CHỜ nó đóng lại
                // Khi nó đóng lại, hứng dữ liệu nó trả về vào biến selectedColor
                final Color? selectedColor = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PickColorScreen()),
                );

                // Kiểm tra xem người dùng có chọn màu không (hay chỉ bấm nút Back trên Appbar)
                if (selectedColor != null) {
                  // Cập nhật giao diện với màu mới
                  setState(() {
                    _boxColor = selectedColor;
                  });
                }
              },
              child: const Text('Pick Color'),
            ),
          ],
        ),
      ),
    );
  }
}