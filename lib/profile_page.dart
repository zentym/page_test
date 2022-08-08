import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class profile_page extends StatefulWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //nut back
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: buildbody(),
    );
  }

  Widget buildbody() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(8),
      //nhap anh dai dien, ngay sinh, dia chi, so dien thoai email va elevatorbutton text:"luu"
      child: ListView(
        children: [
          SizedBox(height: 20),
          buildavatar(),
          SizedBox(height: 20),
          inName(),
          SizedBox(height: 20),
          inDate(),
          SizedBox(height: 20),
          inAddress(),
          SizedBox(height: 20),
          inPhone(),
          SizedBox(height: 20),
          inEmail(),
          SizedBox(height: 20),
          inSave(),
        ],
      ),
    );
  }

  //thay ảnh đại diện cùng icon máy ảnh góc dưới bên phải tấm ảnh
  Widget buildavatar() {
    return Center(
      child: Stack(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: SizedBox(
                width: 70,
                height: 70,
                child: Image.network(
                  'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //icon máy ảnh góc dưới bên phải tấm ảnh
          Center(
            child: Container(
              width: 70,
              height: 70,
              child: IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  //nhập tên
  Widget inName() {
    return Container(
      child: const Center(
        child: TextField(
          autocorrect: false,
          decoration: InputDecoration(
            labelText: 'Họ và tên',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }

  //nhập ngày sinh
  Widget inDate() {
    return Container(
      child: const Center(
        child: TextField(
          autocorrect: false,
          decoration: InputDecoration(
            labelText: 'Ngày sinh',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }

  //nhập địa chỉ
  Widget inAddress() {
    return Container(
      child: const Center(
        child: TextField(
          autocorrect: false,
          decoration: InputDecoration(
            labelText: 'Địa chỉ',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }

  //nhap sdt
  Widget inPhone() {
    return Container(
      child: const Center(
        child: TextField(
          autocorrect: false,
          decoration: InputDecoration(
            labelText: 'Số điện thoại',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }

  //nhap email
  Widget inEmail() {
    return Container(
      child: const Center(
        child: TextField(
          autocorrect: false,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }

  //nut luu
  Widget inSave() {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: _changePage,
        child: const Text('Lưu'),
      ),
    );
  }

  _changePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => profile_page(),
      ),
    );
  }
}
