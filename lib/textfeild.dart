import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String? chieuCao;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          width: 385,
          height: 385,
          child:

              // Nhập vào 1 số và kiểm tra số đó cso phải là số lẻ không ?
              Column(
            children: <Widget>[
              const Text(
                'Vui long nhap chieu cao cua ban vao?',
                style: TextStyle(fontSize: 30),
              ),
              TextField(
                onChanged: (value) {
                  chieuCao = value;
                },
                keyboardType: TextInputType.number,
              ),
              TextButton(
                onPressed: () {
                  print('nhay vao day');
                },
                child: const Text('Xu ly'),
              ),
              Text(
                'Chieu cao cua ban la : $chieuCao cm',
                style: const TextStyle(fontSize: 20),
              ),
            ],
          )),
    );
  }
}
