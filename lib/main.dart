import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  ThemeMode _themeMode = ThemeMode.system;
  int _selectedIndex = 0; // _selectedIndex を MyApp に移動

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  void changeIndex(int index) {
    // _selectedIndex を変更するメソッド
    setState(() {
      _selectedIndex = index;
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
        textTheme: GoogleFonts.notoSansJpTextTheme(),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark, // ダークモードのテーマ
        textTheme: GoogleFonts.notoSansJpTextTheme(),
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
    final selectedIndex = MyApp.of(context)?._selectedIndex ?? 0;
    final state = MyApp.of(context);

    final widgetOptions = <Widget>[
      const ActivitiesPage(),
      const AchievementsPage(),
      const HistoryPage(),
    ];

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
                          state?.changeIndex(0); // MyAppのchangeIndexを呼び出す
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.star),
                        title: const Text('作品・功績紹介'),
                        onTap: () {
                          Navigator.pop(context);
                          state?.changeIndex(1); // MyAppのchangeIndexを呼び出す
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.history),
                        title: const Text('歴史'),
                        onTap: () {
                          Navigator.pop(context);
                          state?.changeIndex(2); // MyAppのchangeIndexを呼び出す
                        },
                      ),
                      ListTile(
                        leading: Icon(_getThemeIcon(themeMode)), // themeModeを渡す
                        title: const Text('ダークモード切り替え'),
                        onTap: () {
                          state?.changeTheme(
                            themeMode == ThemeMode.light
                                ? ThemeMode.dark
                                : ThemeMode.light,
                          );
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
                      selectedIndex: selectedIndex,
                      onDestinationSelected: (index) =>
                          state?.changeIndex(index),
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
                    Expanded(
                      child: IndexedStack(
                        // IndexedStackを使用
                        index: selectedIndex,
                        children: widgetOptions,
                      ),
                    ),
                  ],
                )
              : IndexedStack(
                  // IndexedStackを使用
                  index: selectedIndex,
                  children: widgetOptions,
                ),
          bottomNavigationBar: !isWideScreen
              ? NavigationBar(
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (index) => state?.changeIndex(index),
                  destinations: const <NavigationDestination>[
                    // constを追加
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

  IconData _getThemeIcon(ThemeMode themeMode) {
    // themeModeを受け取る
    return themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode;
  }
}

// 各ページのWidget
class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '電子電脳技術研究会は、。\n'
              '私たちは、〇〇、〇〇、〇〇といった活動を通して、〇〇の知識・技術を習得し、〇〇を目標としています。',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              '具体的な活動内容としては、以下のものがあります。\n'
              '- 〇〇\n'
              '- 〇〇\n'
              '- 〇〇',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
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
