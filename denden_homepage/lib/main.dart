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
        useMaterial3: true, // Material Design 3を有効にする
        colorSchemeSeed: Colors.blue, // カラーテーマを設定
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

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ActivitiesPage(),
    const WorksPage(),
    const HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // レスポンシブデザインを実現
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('部活名ホームページ'),
          ),
          // 画面サイズに応じてNavigation RailまたはBottomNavigationBarを表示
          body: Row(
            children: [
              if (constraints.maxWidth >= 600) // 画面幅が600px以上の場合
                NavigationRail(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  labelType: NavigationRailLabelType.all,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.sports),
                      label: Text('活動内容'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.star),
                      label: Text('作品・功績紹介'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.history),
                      label: Text('歴史'),
                    ),
                  ],
                ),
              Expanded(
                // 残りのスペースをコンテンツに割り当てる
                child: _pages[_selectedIndex],
              ),
            ],
          ),
          bottomNavigationBar: constraints.maxWidth < 600 // 画面幅が600px未満の場合
              ? BottomNavigationBar(
                  currentIndex: _selectedIndex,
                  onTap: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.sports),
                      label: '活動内容',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.star),
                      label: '作品・功績',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.history),
                      label: '歴史',
                    ),
                  ],
                )
              : null,
        );
      },
    );
  }
}

// 各ページの内容
class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('活動内容ページ'));
  }
}

class WorksPage extends StatelessWidget {
  const WorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('作品・功績紹介ページ'));
  }
}

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('歴史ページ'));
  }
}
