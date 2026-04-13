import 'package:flutter/material.dart';
import '../models/product.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Tạo một danh sách sản phẩm mẫu (Mock Data)
    final List<Product> products = [
      Product(name: 'Laptop Dell XPS 15', price: 1500.0),
      Product(name: 'MacBook Pro 14', price: 1999.0),
      Product(name: 'Bàn phím cơ Keychron', price: 100.0),
      Product(name: 'Chuột Logitech MX Master 3', price: 99.0),
      Product(name: 'Màn hình LG UltraGear', price: 450.0),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Câu 4 - Product List'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'MSSV: 6451071018',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
          // Expanded giúp ListView chiếm toàn bộ không gian còn lại
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index]; // Lấy sản phẩm hiện tại
                
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: const Icon(Icons.shopping_bag, color: Colors.blue),
                    title: Text(
                      product.name, 
                      style: const TextStyle(fontWeight: FontWeight.bold)
                    ),
                    subtitle: Text('\$${product.price}'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Nhấn vào sản phẩm -> Truyền object product sang DetailScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(product: product),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}