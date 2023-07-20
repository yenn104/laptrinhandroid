import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chủ'),
      ),
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Home Screen',
                  style: TextStyle(fontSize: 26),
                ),
                buildRowLayout(),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/dart.png', // Thay thế bằng tên thích hợp của hình ảnh Cộng
                  height: 100, // Đặt chiều cao của hình ảnh
                  width: 200, // Đặt chiều rộng của hình ảnh
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/flutterlogo.png', // Thay thế bằng tên thích hợp của hình ảnh Cộng
                  height: 100, // Đặt chiều cao của hình ảnh
                  width: 200, // Đặt chiều rộng của hình ảnh
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/android.png', // Thay thế bằng tên thích hợp của hình ảnh Cộng
                  height: 200, // Đặt chiều cao của hình ảnh
                  width: 200, // Đặt chiều rộng của hình ảnh
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Nut da duoc bam!')));
                    },
                    child: Text('Click me!')),
              ],
            )),
      ),
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.orange,
        height: 100,
        width: 100,
      )
    ],
  );
}
