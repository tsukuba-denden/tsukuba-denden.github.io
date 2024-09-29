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
        useMaterial3: true, // Material Design 3 を有効にする
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

  static const List<Widget> _widgetOptions = <Widget>[
    ActivitiesPage(), // 活動内容ページ
    AchievementsPage(), // 作品・功績紹介ページ
    HistoryPage(), // 歴史ページ
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // 画面の幅に応じてレイアウトを切り替える
      bool isWideScreen = constraints.maxWidth >= 600;

      return Scaffold(
        appBar: AppBar(
          title: const Text('電子電脳技術研究会ホームページ'),
        ),
        body: isWideScreen
            ? Row(
                // ワイドスクリーンの場合: ナビゲーションを左に配置
                children: <Widget>[
                  NavigationRail(
                    selectedIndex: _selectedIndex,
                    onDestinationSelected: _onItemTapped,
                    labelType: NavigationRailLabelType.all,
                    destinations: const <NavigationRailDestination>[
                      NavigationRailDestination(
                        icon: Icon(Icons.sports_baseball),
                        selectedIcon: Icon(Icons.sports_baseball_outlined),
                        label: Text('活動内容'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.star),
                        selectedIcon: Icon(Icons.star_outline),
                        label: Text('作品・功績紹介'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.history),
                        selectedIcon: Icon(Icons.history_outlined),
                        label: Text('歴史'),
                      ),
                    ],
                  ),
                  const VerticalDivider(thickness: 1, width: 1),
                  Expanded(child: _widgetOptions.elementAt(_selectedIndex)),
                ],
              )
            : _widgetOptions.elementAt(_selectedIndex), // 狭い画面の場合: ナビゲーションを下に配置
        bottomNavigationBar: !isWideScreen // ワイドスクリーンでない場合のみNavigationBarを表示
            ? NavigationBar(
                selectedIndex: _selectedIndex,
                onDestinationSelected: _onItemTapped,
                destinations: const <NavigationDestination>[
                  NavigationDestination(
                    icon: Icon(Icons.sports_baseball),
                    label: '活動内容',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.star),
                    label: '作品・功績紹介',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.history),
                    label: '歴史',
                  ),
                ],
              )
            : null,
      );
    });
  }
}

// 各ページのWidget
class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('活動内容ページ'));
  }
}

class AchievementsPage extends StatelessWidget {
  const AchievementsPage({super.key});

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
