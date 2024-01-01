import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/level_card.dart';
import 'package:mygameinfo/login_page.dart';
import 'package:mygameinfo/short_game_report_list_view.dart';
import 'package:mygameinfo/store/module.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final store = StoreProvider.of<AppState>(context);
    final sliverDelegate = CustomPersistentSliverDelegate(
        statusBarHeight: MediaQuery.of(context).viewPadding.top,
        platform: isMaterial(context)
            ? PlatformStyle.Material
            : PlatformStyle.Cupertino);
    onRefresh() async {
      store.dispatch(StartAutomaticApiHydrationAction());
      while (store.state.taskCount > 0) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }

    var scrollView = CustomScrollView(slivers: <Widget>[
      SliverPersistentHeader(
        pinned: true,
        delegate: sliverDelegate,
      ),
      if (!isMaterial(context))
        CupertinoSliverRefreshControl(
          onRefresh: onRefresh,
        ),
      SliverToBoxAdapter(
        child: Center(
            child: StoreConnector<AppState, (AccuracyRatioInfo?, bool)>(
                converter: (store) =>
                    (store.state.accuracyRatioInfo, store.state.loggedIn),
                builder: (ctx, tuple) {
                  final tagStats = tuple.$1;
                  final loggedIn = tuple.$2;
                  if (loggedIn == false) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: PlatformElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute<Widget>(
                                builder: (BuildContext ctx) {
                                  return StoreProvider<AppState>(
                                      store:
                                          StoreProvider.of<AppState>(context),
                                      child: const LoginPage());
                                },
                              ),
                            );
                          },
                          child: const Text('Login')),
                    );
                  }
                  if (tagStats == null) {
                    return const SizedBox.shrink();
                  }
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(children: [
                            const Text("TAG RATIO"),
                            Text(tagStats.tagRatio ?? "N/A",
                                style: const TextStyle(fontSize: 40)),
                          ]),
                          Column(children: [
                            const Text("ACCURACY"),
                            Text(tagStats.tagAccuracy ?? "N/A",
                                style: const TextStyle(fontSize: 40)),
                          ])
                        ]),
                  );
                })),
      ),
      const SliverToBoxAdapter(
        child: LevelCard(),
      ),
      const ShortGameReportListView(),
    ]);
    return PlatformWidget(
      cupertino: (ctx, platform) => scrollView,
      material: (ctx, platform) => RefreshIndicator(
        edgeOffset: sliverDelegate.maxExtent,
        onRefresh: onRefresh,
        child: scrollView,
      ),
    );
  }
}

class CustomPersistentSliverDelegate extends SliverPersistentHeaderDelegate {
  final double statusBarHeight;
  final PlatformStyle platform;

  CustomPersistentSliverDelegate(
      {this.statusBarHeight = 0, required this.platform});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final progress =
        min(shrinkOffset, maxExtent - minExtent) / (maxExtent - minExtent);
    final greyAlpha = (32 * progress).round() << 24;
    final imageWidth = 30 * (4 - 3 * progress) -
        (45) * (1 - progress);
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final decoration = platform == PlatformStyle.Material
        ? BoxDecoration(
            color: Theme.of(context)
                .navigationBarTheme
                .backgroundColor
                ?.withOpacity(progress),
          )
        : BoxDecoration(
            color: Color(0x00808080 | greyAlpha),
            border: Border(
                bottom:
                    BorderSide(color: Color(0x00808080 | (greyAlpha * 2)))));
    return ClipRect(
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: decoration,
            width: double.infinity,
            height: maxExtent,
            child: Padding(
              padding: EdgeInsets.only(top: statusBarHeight),
              child: Stack(
                children: [
                  Center(
                    child: StoreConnector<AppState, String?>(
                      converter: (store) => store.state.loginInfo?.alias,
                      builder: (context, alias) {
                        return Padding(
                          padding: EdgeInsets.only(
                              top: (1 - progress) * (maxExtent - minExtent)),
                          child: Text(
                            alias ?? "MyGameInfo",
                            style: isMaterial(context)
                                ? Theme.of(context).textTheme.titleLarge
                                : CupertinoTheme.of(context)
                                    .textTheme
                                    .navTitleTextStyle,
                            textScaler: TextScaler.linear(2 - progress),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: 
                              (platform == PlatformStyle.Material ? 18 : 8) * progress +
                              (screenWidth / 2 - imageWidth / 2) *
                                  (1 - progress)),
                      child: StoreConnector<AppState, (int?, CDNInfo?)>(
                          converter: (store) => (
                                store.state.loginInfo?.userId,
                                store.state.cdnInfo
                              ),
                          builder: (ctx, tuple) {
                            final uid = tuple.$1;
                            final cdnInfo = tuple.$2;
                            if (uid == null) {
                              return const SizedBox.shrink();
                            }
                            return Padding(
                              padding: EdgeInsets.only(
                                  bottom: (minExtent - statusBarHeight) *
                                      (1 - progress)),
                              child: GestureDetector(
                                onTap: () {
                                  showCupertinoModalPopup(
                                      context: ctx,
                                      builder: (modalctx) {
                                        return CupertinoActionSheet(
                                          actions: [
                                            CupertinoActionSheetAction(
                                              isDestructiveAction: true,
                                              onPressed: () {
                                                StoreProvider.of<AppState>(ctx)
                                                    .dispatch(LogOutAction());
                                                Navigator.pop(modalctx);
                                              },
                                              child: const Text("Log out"),
                                            )
                                          ],
                                        );
                                      });
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10 + (progress) * 10)),
                                  child: CachedNetworkImage(
                                    width: imageWidth,
                                    height: imageWidth,
                                    imageUrl:
                                        "https:${cdnInfo?.url ?? "//myweb-data.s3.amazonaws.com/sandbox-kiosk"}/photos/$uid.png",
                                    placeholder: (ctx, str) {
                                      return Icon(
                                        CupertinoIcons.person_crop_circle,
                                        size: imageWidth,
                                        color: CupertinoTheme.of(ctx)
                                            .textTheme
                                            .textStyle
                                            .color,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  @override
  double get maxExtent => 150 + statusBarHeight;

  @override
  double get minExtent =>
      (platform == PlatformStyle.Cupertino ? 45 : 64) + statusBarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

// vim: set ts=2 sw=2 ai:
