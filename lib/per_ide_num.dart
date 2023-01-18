import 'package:flutter/material.dart';
import 'package:memory/extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PerIdeNum(title: 'MEMO;RY'),
    );
  }
}

class PerIdeNum extends StatefulWidget {
  const PerIdeNum({super.key, required this.title});
  final String title;
  @override
  State<PerIdeNum> createState() => _PerIdeNumState();
}

class _PerIdeNumState extends State<PerIdeNum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: HexColor('#FFFFFF'),
        iconTheme: IconThemeData(color: HexColor('#000000')), // ここで色を決めることができる。
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            color: HexColor('#F9F9F9'),
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 0, top: 0),
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // <= 追加
              children: <Widget>[
                // main.dartから渡ってきた値を動的に入れる
                Text(
                  '暗証番号',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '28件',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.only(
                left: 32,
                right: 32,
                top: 5,
                bottom: 5,
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'タイトル'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: '番号'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: '備考'),
                  ),
                ],
              )),
        ],
      )),
    );
  }
}
