import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/store/module.dart';
import 'package:mygameinfo/util.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
                    print("tapped up!");
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
                              : CupertinoColors.secondarySystemGroupedBackground,
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
                                            const EdgeInsets.only(right: 20)),
                                        child: CachedNetworkImage(
                                            width: 80,
                                            imageUrl:
                                                "https:${cdnInfo?.cdn}/rankings/${levelInfo.id}-l.png"),
                                      );
                                    }),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Level: ${levelInfo.level ?? "N/A"}"),
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
                            barRadius: const Radius.circular(5),
                            center: Text("${levelInfo.xp} / ${levelInfo.nextXp}"),
                            lineHeight: 25.0,
                            percent:
                                (levelInfo.xp ?? 0) / (levelInfo.nextXp ?? 1),
                            backgroundColor: CupertinoDynamicColor.resolve(
                                CupertinoColors.systemGroupedBackground, context),
                            progressColor: toPastel(
                                Color(int.parse(
                                    "ff${levelInfo.classColour ?? "808080"}",
                                    radix: 16)),
                                light: true),
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
