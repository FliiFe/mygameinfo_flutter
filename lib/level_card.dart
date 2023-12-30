import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/store/module.dart';
import 'package:mygameinfo/util.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({super.key});
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UserLevelInfo?>(
      converter: (store) => store.state.userLevelInfo,
      builder: (ctx, levelInfo) {
        if (levelInfo == null) {
          return const CupertinoActivityIndicator();
        }
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: toPastel(
                    Color(int.parse("ff${levelInfo.classColour ?? "808080"}",
                        radix: 16)),
                    light: CupertinoAdaptiveTheme.of(ctx).brightness ==
                        Brightness.light),
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
                                  padding: const EdgeInsets.all(8.0)
                                      .add(const EdgeInsets.only(right: 20)),
                                  child: CachedNetworkImage(
                                      width: 80,
                                      imageUrl:
                                          "https:${cdnInfo?.cdn}/rankings/${levelInfo.id}-l.png"),
                                );
                              }),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Level: ${levelInfo.level ?? "N/A"}"),
                              Text("Rank: ${levelInfo.name ?? "N/A"}"),
                              Text("Class: ${levelInfo.className ?? "N/A"}"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    LinearPercentIndicator(
                      barRadius: const Radius.circular(5),
                      center: Text("${levelInfo.xp} / ${levelInfo.nextXp}"),
                      lineHeight: 25.0,
                      percent: (levelInfo.xp ?? 0) / (levelInfo.nextXp ?? 1),
                      backgroundColor: Colors.grey,
                      progressColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

