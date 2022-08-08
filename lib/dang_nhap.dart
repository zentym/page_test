// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dang_ky.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: DangNhapWidget(),
  ));
}

class DangNhapWidget extends StatelessWidget {
  const DangNhapWidget({Key? key}) : super(key: key);
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
              const SizedBox(
                height: 120,
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
              //Đănng nhập bằng sdt và mật khẩu
              const SizedBox(
                height: 60,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DangKyWidget(),
                        ),
                      );
                    },
                    color: Colors.white,
                    child: const Text('Đăng ký'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: const Text('Đăng nhập'),
                  ),
                  //hotline: 1800.1186(Richtext)
                ],
              ),
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
