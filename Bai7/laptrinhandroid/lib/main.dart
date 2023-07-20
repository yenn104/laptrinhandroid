import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListScreen(),
    );
  }
}

class ListScreen extends StatelessWidget {
  final List<Product> productList = [
    Product(name: 'Khuyên bạc hoa hướng dương', imageUrl: 'assets/images/khuyen1.jpg'),
    Product(name: 'Nhẫn bạc đuôi cá voi xanh', imageUrl: 'assets/images/nhan5.jpg'),
    Product(name: 'Lắc chân bạc cá voi xanh', imageUrl: 'assets/images/chain2.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách sản phẩm'),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          final product = productList[index];
          return ListTile(
            title: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    product.imageUrl,
                    height: 250,
                    width: 250,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  product.name,
                  style: TextStyle(
                    fontFamily: 'Cambria',
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Product product;

  DetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết sản phẩm'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Đặt bán kính bo góc là 10
              child: Image.asset(
                product.imageUrl,
                height: 400,
                width: 400,
              ),
            ),
            SizedBox(height: 26),
            Text('${product.name}',
              style: TextStyle(
                color: Colors.blue, // Đặt màu chữ cho nút (màu đen)
                fontFamily: 'Courier New',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String imageUrl;

  Product({required this.name, required this.imageUrl});
}