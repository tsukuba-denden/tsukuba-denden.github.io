import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '部活名',
      theme: ThemeData(
        useMaterial3: true, // Material Design 3を有効化
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('部活名ホームページ'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: '活動内容'),
            Tab(text: '作品・功績紹介'),
            Tab(text: 'SNS'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ActivitiesTab(),
          WorksTab(),
          SNSTab(),
        ],
      ),
    );
  }
}

class ActivitiesTab extends StatelessWidget {
  const ActivitiesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('活動内容'),
    );
  }
}

class WorksTab extends StatelessWidget {
  const WorksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('作品・功績紹介'),
    );
  }
}

class SNSTab extends StatelessWidget {
  const SNSTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('SNS'),
    );
  }
}
