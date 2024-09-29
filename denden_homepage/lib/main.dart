import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '電子電脳技術研究会',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '電子電脳技術研究会ホームページ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ようこそ！',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ここにアクションを追加
              },
              child: const Text('活動内容'),
            ),
            ElevatedButton(
              onPressed: () {
                // ここにアクションを追加
              },
              child: const Text('作品紹介'),
            ),
            ElevatedButton(
              onPressed: () {
                // ここにアクションを追加
              },
              child: const Text('SNS'),
            ),
          ],
        ),
      ),
    );
  }
}
