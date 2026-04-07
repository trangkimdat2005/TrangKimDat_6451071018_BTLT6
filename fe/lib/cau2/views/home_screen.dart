import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Key để quản lý trạng thái của Form
  final _formKey = GlobalKey<FormState>();
  // Controller để lấy dữ liệu text được nhập vào
  final _nameController = TextEditingController();

  @override
  void dispose() {
    // Giải phóng bộ nhớ khi widget bị huỷ
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Câu 2 - Home Screen'),
        // Nút Back để thoát khỏi Cau2App, quay về Menu tổng
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Bao bọc bằng Form để sử dụng tính năng validation
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'MSSV: 6451071018',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              const SizedBox(height: 30),
              
              // TextField có tính năng validate
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nhập tên người dùng',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                // Xử lý logic kiểm tra rỗng
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Vui lòng không để trống tên!';
                  }
                  return null; // Trả về null nghĩa là hợp lệ
                },
              ),
              const SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () {
                  // Kích hoạt hàm validator của tất cả TextFormField trong Form
                  if (_formKey.currentState!.validate()) {
                    // Nếu hợp lệ, lấy tên và chuyển trang kèm arguments
                    final username = _nameController.text.trim();
                    Navigator.pushNamed(
                      context, 
                      '/profile',
                      arguments: username, // Truyền dữ liệu đi
                    );
                  }
                },
                child: const Text('Go to Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}