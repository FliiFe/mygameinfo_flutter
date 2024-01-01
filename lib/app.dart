import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/home_tab.dart';
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
    const themeMode = ThemeMode.system;

    final materialLightTheme = ThemeData.light().copyWith(navigationBarTheme: ThemeData.light().navigationBarTheme.copyWith(backgroundColor: const Color(0xffffffff)));
    final materialDarkTheme = ThemeData.dark().copyWith(navigationBarTheme: ThemeData.dark().navigationBarTheme.copyWith(backgroundColor: const Color(0xff202020)));

    final cupertinoLightTheme =
        MaterialBasedCupertinoThemeData(materialTheme: materialLightTheme);
    const darkDefaultCupertinoTheme =
        CupertinoThemeData(brightness: Brightness.dark);
    final cupertinoDarkTheme = MaterialBasedCupertinoThemeData(
      materialTheme: materialDarkTheme.copyWith(
        cupertinoOverrideTheme: CupertinoThemeData(
          brightness: Brightness.dark,
          barBackgroundColor: darkDefaultCupertinoTheme.barBackgroundColor,
          textTheme: CupertinoTextThemeData(
            navActionTextStyle: darkDefaultCupertinoTheme
                .textTheme.navActionTextStyle
                .copyWith(color: materialDarkTheme.primaryColor),
            navLargeTitleTextStyle: darkDefaultCupertinoTheme
                .textTheme.navLargeTitleTextStyle
                .copyWith(color: const Color(0xF0F9F9F9)),
          ),
        ),
      ),
    );

    return PlatformProvider(
      settings: PlatformSettingsData(
        platformStyle: const PlatformStyleData(macos: PlatformStyle.Material, ios: PlatformStyle.Cupertino),
      ),
      builder: (ctx) => PlatformTheme(
          themeMode: themeMode,
          materialLightTheme: materialLightTheme,
          materialDarkTheme: materialDarkTheme,
          cupertinoLightTheme: cupertinoLightTheme,
          cupertinoDarkTheme: cupertinoDarkTheme,
          builder: (context) {
            return PlatformApp(
              home: StoreProvider(
                  store: store, child: const MyGameInfoHomePage()),
              debugShowCheckedModeBanner: false,
            );
          }),
    );
  }
}

class MyGameInfoHomePage extends StatelessWidget {
  const MyGameInfoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      backgroundColor: CupertinoDynamicColor.resolve(
          CupertinoColors.systemGroupedBackground, context),
      body: const HomeTab(),
    );
  }
}

// vim: set ts=2 sw=2 ai:
