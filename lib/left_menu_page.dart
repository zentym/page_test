import 'package:flutter/material.dart';
import 'package:page_test/user.dart';

class Left_menu extends StatefulWidget {
  const Left_menu({Key? key}) : super(key: key);

  @override
  State<Left_menu> createState() => _Left_menuState();
}

class _Left_menuState extends State<Left_menu> {
  @override
  final user = User(
      'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png',
      'Vinhomes Starcity');

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //avatar, ten, sdt
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () {
          //     // Navigator.pop(context);
          //   },
          // ),
          ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.blue,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: SizedBox(
                    width: 48,
                    height: 48,
                    child: Image.network(
                      user.avatar,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        user.name,
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "0909090909",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //icon home , text :"sự cố"
          const left_menu_item(icon: Icon(Icons.menu), title: "Sự cố"),
          const Divider(),
          //icon cảnh báo. text: "báo cáo"
          const left_menu_item(icon: Icon(Icons.dangerous), title: "Báo cáo"),
          const Divider(),
          //icon sercurity. text: "đổi mật khẩu"
          const left_menu_item(
              icon: Icon(Icons.security), title: "Đổi mật khẩu"),
          const Divider(),
          //icon điều khoản. text: "điều khoản"
          const left_menu_item(
              icon: Icon(Icons.description), title: "Điều khoản"),
          const Divider(),
          //icon liên hệ, text: "liên hệ"
          const left_menu_item(
              icon: Icon(Icons.contact_phone), title: "Liên hệ"),
          const Divider(),
          //icon logout. text: "đăng xuất"
          const left_menu_item(icon: Icon(Icons.logout), title: "Đăng xuất"),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class left_menu_item extends StatelessWidget {
  final Icon icon;
  final String title;
  const left_menu_item({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      // mouseCursor: MouseCursor.defer,
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            icon,
            const SizedBox(
              width: 8,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
