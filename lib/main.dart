import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system; // デフォルトはシステム設定に従う

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '電子電脳技術研究会',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.light, // ライトモードのテーマ
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark, // ダークモードのテーマ
      ),
      themeMode: _themeMode, // 現在のテーマモードを設定
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = MyApp.of(context)?._themeMode ?? ThemeMode.system;
    int _selectedIndex = 0; // MyHomePage内に移動

    // _widgetOptionsをMyHomePage内に移動。同時にconstを削除
    final List<Widget> _widgetOptions = <Widget>[
      const ActivitiesPage(),
      const AchievementsPage(),
      const HistoryPage(),
    ];

    void _onItemTapped(int index) {
      // _onItemTappedをMyHomePage内に移動
      _selectedIndex = index; // 変更を適用するために再ビルドが必要
      (context as Element).markNeedsBuild();
    }

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isWideScreen = constraints.maxWidth >= 600;

        return Scaffold(
          appBar: AppBar(
            title: const Text('電子電脳技術研究会ホームページ'),
            leading: !isWideScreen
                ? Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      );
                    },
                  )
                : null,
            actions: <Widget>[
              IconButton(
                icon: Icon(themeMode == ThemeMode.dark
                    ? Icons.light_mode
                    : Icons.dark_mode),
                onPressed: () {
                  final state = MyApp.of(context);
                  if (state != null) {
                    state.changeTheme(
                      state._themeMode == ThemeMode.light
                          ? ThemeMode.dark
                          : ThemeMode.light,
                    );
                  }
                },
              ),
            ],
          ),
          drawer: !isWideScreen
              ? Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      const DrawerHeader(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Text(
                          'メニュー',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.sports_baseball),
                        title: const Text('活動内容'),
                        onTap: () {
                          Navigator.pop(context);
                          _changeIndex(context, 0);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.star),
                        title: const Text('作品・功績紹介'),
                        onTap: () {
                          Navigator.pop(context);
                          _changeIndex(context, 1);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.history),
                        title: const Text('歴史'),
                        onTap: () {
                          Navigator.pop(context);
                          _changeIndex(context, 2);
                        },
                      ),
                      ListTile(
                        leading: Icon(themeMode == ThemeMode.dark
                            ? Icons.light_mode
                            : Icons.dark_mode),
                        title: const Text('ダークモード切り替え'),
                        onTap: () {
                          final state = MyApp.of(context);
                          if (state != null) {
                            state.changeTheme(
                              state._themeMode == ThemeMode.light
                                  ? ThemeMode.dark
                                  : ThemeMode.light,
                            );
                          }
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                )
              : null,
          body: isWideScreen
              ? Row(
                  children: <Widget>[
                    NavigationRail(
                      selectedIndex: _selectedIndex,
                      onDestinationSelected: _onItemTapped, // 修正
                      labelType: NavigationRailLabelType.all,
                      destinations: const <NavigationRailDestination>[
                        NavigationRailDestination(
                          icon: Icon(Icons.sports_baseball),
                          selectedIcon: Icon(Icons.sports_baseball_outlined),
                          label: Text('活動内容'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.star),
                          selectedIcon: Icon(Icons.star_outlined),
                          label: Text('作品・功績紹介'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.history),
                          selectedIcon: Icon(Icons.history_outlined),
                          label: Text('歴史'),
                        ),
                      ],
                      trailing: IconButton(
                        icon: Icon(themeMode == ThemeMode.dark
                            ? Icons.light_mode
                            : Icons.dark_mode),
                        onPressed: () {
                          final state = MyApp.of(context);
                          if (state != null) {
                            state.changeTheme(
                              state._themeMode == ThemeMode.light
                                  ? ThemeMode.dark
                                  : ThemeMode.light,
                            );
                          }
                        },
                      ),
                    ),
                    const VerticalDivider(thickness: 1, width: 1),
                    Expanded(child: _widgetOptions[_selectedIndex]), // 修正
                  ],
                )
              : _widgetOptions[_selectedIndex], // 修正
          bottomNavigationBar: !isWideScreen
              ? NavigationBar(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: _onItemTapped, // 修正
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
      },
    );
  }

  void _changeIndex(BuildContext context, int index) {
    // Scaffold.of(context) が動作するように、
    // _onItemTapped を呼び出す前に状態を更新
    setState(() {
      _selectedIndex = index;
    });
  }

  IconData _getThemeIcon() {
    final state = MyApp.of(context);
    return (state != null && state._themeMode == ThemeMode.dark)
        ? Icons.light_mode
        : Icons.dark_mode;
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
