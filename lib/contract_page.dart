import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contract_page extends StatefulWidget {
  const Contract_page({Key? key}) : super(key: key);

  @override
  State<Contract_page> createState() => _Contract_pageState();
}

class _Contract_pageState extends State<Contract_page> {
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
          title: const Text('liên hệ'),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              const SizedBox(
                height: 20,
              ),
              info(),
              const SizedBox(
                height: 20,
              ),
              active(),
              const SizedBox(
                height: 20,
              ),
              content(),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    primary: Colors.green,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text('gửi'),
                ),
              ),
            ],
          ),
        ));
  }

  Widget info() {
    return Row(
      children: [
        const SizedBox(
          width: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Địa chỉ: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: 'Việt Nam',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                text: 'Hotline: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: '1800.1186',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                text: 'Email: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: 'HieuTao@live.com',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget active() {
    //3 ô gửi email, gọi điện, chat
    return Column(
      children: [
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 50,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.email,
                        color: Colors.green,
                      ),
                      const Text('Gửi email'),
                    ],
                  ),
                ),
              ),
            ),

            //gạch dọc
            Container(
              height: 50,
              width: 1,
              color: Color.fromARGB(255, 212, 210, 210),
            ),

            Expanded(
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 50,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      //icon màu xanh
                      const Icon(Icons.phone, color: Colors.green),
                      const Text('Gọi điện'),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              height: 50,
              width: 1,
              color: Color.fromARGB(255, 212, 210, 210),
            ),

            Expanded(
              child: InkWell(
                onTap: () => {},
                child: SizedBox(
                  height: 50,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.chat,
                        color: Colors.green,
                      ),
                      const Text('Chat'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }

  Widget content() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Nội dung phản hồi", style: TextStyle(fontSize: 20)),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
