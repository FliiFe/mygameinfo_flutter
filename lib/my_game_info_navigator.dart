import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/game_report_sheet_content.dart';
import 'package:mygameinfo/main.dart';
import 'package:sheet/route.dart';

import 'home_tab.dart';

class MyGameInfoNavigator extends StatefulWidget {
  const MyGameInfoNavigator({super.key});

  @override
  State<MyGameInfoNavigator> createState() => _MyGameInfoNavigatorState();
}

class MGINavigator extends InheritedWidget {
  // final Widget child;
  final Function(ShortGameReport) openGameReport;
  const MGINavigator(
      {super.key, required super.child, required this.openGameReport});

  static MGINavigator? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MGINavigator>();
  }

  static MGINavigator of(BuildContext context) {
    return MGINavigator.maybeOf(context)!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}

sealed class _MGIRouteInfo {}

class MGIRouteShortGameReport extends _MGIRouteInfo {
  final ShortGameReport shortGameReport;
  MGIRouteShortGameReport({required this.shortGameReport});
}

class _MyGameInfoNavigatorState extends State<MyGameInfoNavigator> {
  _MGIRouteInfo? routeInfo;

  @override
  Widget build(BuildContext context) {
    return MGINavigator(
      openGameReport: (ShortGameReport shortReport) {
        setState(() {
          routeInfo = MGIRouteShortGameReport(shortGameReport: shortReport);
        });
      },
      child: PopScope(
        child: Navigator(
          onPopPage: (route, result) {
            setState(() {
              routeInfo = null;
            });
            route.didPop(result);
            return true;
          },
          pages: [
            CupertinoExtendedPage<void>(
              // context: context,
              child: AnnotatedRegion<SystemUiOverlayStyle>(
                value: const SystemUiOverlayStyle(
                  systemNavigationBarColor: Colors.transparent,
                  systemNavigationBarDividerColor: Colors.transparent,
                ),
                child: PlatformScaffold(
                  backgroundColor: isMaterial(context)
                      ? null
                      : CupertinoDynamicColor.resolve(
                          CupertinoColors.systemGroupedBackground, context),
                  body: const HomeTab(),
                ),
              ),
            ),
            // if (routeInfo != null)
            //   switch (routeInfo!) {
            //     MGIRouteShortGameReport(shortGameReport: var shortReport) =>
            //       // isMaterial(context)
            //           // ? SheetPage<void>(
            //           //     child: GameReportSheetContent(shortReport: shortReport),
            //           //   ) :
            //             CupertinoSheetRoute<void>(
            //               builder: (context) => GameReportSheetContent(
            //                 shortReport: shortReport,
            //               ),
            //             ),
            //   }
          ],
        ),
      ),
    );
  }
}

// vim: set ts=2 sw=2 ai:
