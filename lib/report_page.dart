import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
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
        title: const Text('Báo cáo'),
        centerTitle: true,
      ),
      body: Container(
        child:
            ListView(physics: const NeverScrollableScrollPhysics(), children: [
          //textfield tieu de
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Tiêu đề',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 194, 193, 193),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //textfield noi dung
                // ignore: prefer_const_constructors
                TextField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 40),
                    labelText: 'Nội dung',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 194, 193, 193),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //Inkwell chon anh, dash border
                //InkWell(
                //   onTap: () {},
                //   child: Container(
                //     height: 50,
                //     width: 200,
                //     padding: const EdgeInsets.all(10),
                //     decoration: BoxDecoration(
                //       border: Border.all(
                //         color: Colors.grey,
                //         width: 1,
                //       ),
                //     ),
                //     child: const Icon(
                //       Icons.add_a_photo,
                //       color: Colors.grey,
                //     ),
                //   ),
                // ),
                Row(
                  children: [
                    Container(
                      height: 90,
                      width: 180,
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://picsum.photos/250?image=9"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: DottedBorder(
                        dashPattern: const [8, 4],
                        strokeWidth: 1,
                        color: Colors.grey,
                        child: InkWell(
                          onTap: () {},
                          child: const SizedBox(
                            height: 90,
                            width: 180,
                            child: Icon(
                              Icons.add_a_photo,
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //button gui
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    primary: Colors.green,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text('gửi'),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
