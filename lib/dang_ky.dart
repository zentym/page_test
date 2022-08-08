// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'dang_nhap.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: DangKyWidget(),
  ));
}

class DangKyWidget extends StatelessWidget {
  const DangKyWidget({Key? key}) : super(key: key);
  // https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png
  //Đăng ký đăng nhập
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        //SingelChillScrollView

        child: SingleChildScrollView(
          child: Column(
            children: [
              //tạo nút ấn hình mũi tên phía bên trái để quay lại
              //SizedBox(
              //   width: double.infinity,
              //   height: 60,
              //   child: FlatButton(
              //     onPressed: () {
              //       Navigator.pop(context);
              //     },
              //     child: const Icon(
              //       Icons.arrow_back,
              //       color: Colors.black,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 0,
              ),
              Container(
                width: 180,
                height: 180,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png'),
                      fit: BoxFit.fill),
                ),
              ),
              //Đăng ký bằng họ và tên, sdt và mật khẩu
              const SizedBox(
                height: 60,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Họ và tên',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Số điện thoại',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),

              //nút đang ký nền màu xanh lá, chữ in hoa mày trắng
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DangNhapWidget(),
                    ),
                  );
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text('Đăng ký'),
              ),
              //hotline: 1800.1186(Richtext)
              const SizedBox(
                height: 100,
              ),

              RichText(
                text: const TextSpan(
                  text: 'Hotline: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: '1800.1186',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
