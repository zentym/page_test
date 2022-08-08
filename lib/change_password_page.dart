import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Change_pass extends StatefulWidget {
  const Change_pass({Key? key}) : super(key: key);

  @override
  State<Change_pass> createState() => _Change_passState();
}

class _Change_passState extends State<Change_pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        title: const Text('Đổi mật khẩu'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const TextField(
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'Mật khẩu cũ',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'Mật khẩu mới',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'nhập lại mật khẩu mới',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Lưu'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
