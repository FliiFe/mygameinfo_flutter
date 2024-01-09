import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/game_report_sheet_content.dart';
import 'package:mygameinfo/store/module.dart';
import 'package:mygameinfo/util.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sheet/route.dart';

class LevelCard extends StatefulWidget {
  const LevelCard({super.key});

  @override
  State<LevelCard> createState() => _LevelCardState();
}

class _LevelCardState extends State<LevelCard> {
  bool cardPressed = false;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UserLevelInfo?>(
      converter: (store) => store.state.userLevelInfo,
      builder: (ctx, levelInfo) {
        if (levelInfo == null) {
          return const SizedBox.shrink();
        }
        return Padding(
          padding: const EdgeInsets.all(20).copyWith(bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  "Level",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTapDown: (details) {
                    setState(() {
                      cardPressed = true;
                    });
                  },
                  onTapUp: (details) {
                    setState(() {
                      cardPressed = false;
                    });
                    Navigator.of(context).push(
                      CupertinoSheetRoute<void>(
                        backgroundColor: CupertinoDynamicColor.resolve(
                            CupertinoColors.systemGroupedBackground, context),
                        stops: [0, 0.6, 1],
                        initialStop: 0.6,
                        builder: (ctx) {
                          return StoreProvider<AppState>(
                            store: StoreProvider.of<AppState>(context),
                            child: const Material(
                              elevation: 2,
                              child: LevelSheetContent(),
                            ),
                          );
                        },
                      ),
                    );
                  },
                  onTapCancel: () {
                    setState(() {
                      cardPressed = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: CupertinoDynamicColor.resolve(
                          cardPressed
                              ? CupertinoColors.systemGrey4
                              : CupertinoColors
                                  .secondarySystemGroupedBackground,
                          ctx),
                      // border: Border.all(color: Color(0xff808080), width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                StoreConnector<AppState, CDNInfo?>(
                                    converter: (store) => store.state.cdnInfo,
                                    builder: (ctx, cdnInfo) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0).add(
                                            const EdgeInsets.only(
                                                right: 20, left: 10)),
                                        child: CachedNetworkImage(
                                            width: 80,
                                            imageUrl:
                                                "https:${cdnInfo?.cdn}/rankings/${levelInfo.id}-l.png"),
                                      );
                                    }),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "Level: ${levelInfo.level ?? "N/A"}"),
                                      Text("Rank: ${levelInfo.name ?? "N/A"}"),
                                      Text(
                                          "Class: ${levelInfo.className ?? "N/A"}"),
                                    ],
                                  ),
                                ),
                                const CupertinoListTileChevron(),
                              ],
                            ),
                          ),
                          LinearPercentIndicator(
                            barRadius: const Radius.circular(10),
                            center: Text(
                              "${levelInfo.xp} / ${levelInfo.nextXp}",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: mainTextColor(context)),
                            ),
                            lineHeight: 20.0,
                            percent:
                                (levelInfo.xp ?? 0) / (levelInfo.nextXp ?? 1),
                            backgroundColor: CupertinoDynamicColor.resolve(
                                CupertinoColors.systemGroupedBackground,
                                context),
                            progressColor: toBackgroundColor(
                                Color(int.parse(
                                    "ff${levelInfo.classColour ?? "808080"}",
                                    radix: 16)),
                                light: !(PlatformTheme.of(context)?.isDark ??
                                    false)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class LevelSheetContent extends StatelessWidget {
  const LevelSheetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGroupedBackground,
          leading: SizedBox.shrink(),
          middle: Pill(),
          trailing: CustomCloseButton()),
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarDividerColor: Colors.transparent,
        ),
        child: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            primary: false,
            child: Center(
              child: SafeArea(
                top: false,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: min(900, MediaQuery.of(context).size.width)),
                  child: const Column(
                    children: [
                      LevelCardCarousel(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LevelCardCarousel extends StatelessWidget {
  const LevelCardCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(colors: [
          Colors.transparent,
          Colors.black,
          Colors.black,
          Colors.transparent
        ], stops: [
          0,
          0.05,
          0.95,
          1
        ]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      },
      blendMode: BlendMode.dstIn,
      child: SizedBox(
        height: 150,
        child:
            StoreConnector<AppState, (UserLevelInfo?, List<LevelDescription>)>(
          converter: (store) =>
              (store.state.userLevelInfo, store.state.levelDescriptions),
          builder: (context, info) {
            final userInfo = info.$1;
            final levelDescs = info.$2;
            return PageView(
              controller: PageController(initialPage: (userInfo?.level ?? 1) - 1, viewportFraction: 0.9),
              // controller: ScrollController(
              //     initialScrollOffset:
              //         screenWidth * 0.9 * ((userInfo?.level ?? 1) - 1)),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: levelDescs.map((element) {
                final levelColorStyle = TextStyle(
                    color: toPastelText(
                        Color(int.parse("ff${element.classColour ?? "808080"}",
                            radix: 16)),
                        light: !(PlatformTheme.of(context)?.isDark ?? false)));
                return Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StoreConnector<AppState, CDNInfo?>(
                          converter: (store) => store.state.cdnInfo,
                          builder: (ctx, cdnInfo) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CachedNetworkImage(
                                  height: 100,
                                  imageUrl:
                                      "https:${cdnInfo?.cdn}/rankings/${element.id}-l.png"),
                            );
                          }),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Level ${element.level ?? "N/A"}"),
                          Text(
                            element.name ?? "N/A",
                            style: levelColorStyle,
                          ),
                          Text(
                            element.className ?? "N/A",
                            style: levelColorStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
