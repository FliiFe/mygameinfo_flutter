import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/home_tab.dart';
import 'package:mygameinfo/reports_tab.dart';
import 'package:mygameinfo/achievements_tab.dart';
import 'package:mygameinfo/settings_tab.dart';
import 'package:mygameinfo/store/module.dart';
import 'package:redux/redux.dart';

class MyGameInfoApp extends StatelessWidget {
  final Store<AppState> store;
  const MyGameInfoApp({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoAdaptiveTheme(
      light: const CupertinoThemeData(
        brightness: Brightness.light,
      ),
      dark: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      initial: AdaptiveThemeMode.system,
      builder: (theme) => CupertinoApp(
        theme: theme,
        home: StoreProvider(store: store, child: const MyGameInfoHomePage()),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyGameInfoHomePage extends StatelessWidget {
  const MyGameInfoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.memories),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.rosette),
            label: 'Achievements',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return switch (index) {
          0 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: HomeTab(),
              ),
            ),
          1 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: GameReportsTab(),
              ),
            ),
          2 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: AchievementsTab(),
              ),
            ),
          _ => throw Exception('Invalid index $index'),
        };
      },
    );
  }
}

// vim: set ts=2 sw=2 ai:
