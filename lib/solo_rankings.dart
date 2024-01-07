import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/game_report_sheet_content.dart';
import 'package:mygameinfo/store/module.dart';

class SoloRankings extends StatelessWidget {
  final GameReport gameReport;
  final ShortGameReport shortReport;
  const SoloRankings(
      {super.key, required this.gameReport, required this.shortReport});

  @override
  Widget build(BuildContext context) {
    if (gameReport.userGames?.isEmpty != false) {
      return const SizedBox.shrink();
    }
    final soloStats = gameReport.userGames!;
    return StoreConnector<AppState, int?>(
      converter: (store) => store.state.loginInfo?.userId,
      builder: (context, userId) {
        final listElements = [
          ...soloStats.map((userStats) {
            return Padding(
              padding: EdgeInsets.all(isMaterial(context) ? 8.0 : 0)
                  .copyWith(bottom: 0, top: 0),
              child: PlatformListTile(
                material: (ctx, platform) => MaterialListTileData(
                    contentPadding: const EdgeInsets.only(left: 15, right: 15)),
                title: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      userStats.alias ?? "N/A",
                      style: TextStyle(
                        color: shortReport.game == "solo"
                            ? null
                            : teamColors
                                .elementAtOrNull(userStats.teamId ?? -1),
                        fontWeight: userStats.omembId == userId
                            ? FontWeight.bold
                            : null,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "${userStats.accuracy ?? 0}% ",
                      style: const TextStyle(color: Color(0xff808080)),
                    ),
                    Text(userStats.score?.toString() ?? "0"),
                  ],
                ),
                leading: Text("#${userStats.rank}"),
                // leadingSize: 35,
              ),
            );
          })
        ];
        return PlatformWidget(
          cupertino: (context, platform) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Solo scores",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              CupertinoListSection.insetGrouped(
                children: listElements,
              ),
            ],
          ),
          material: (context, platform) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Solo scores",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ...listElements,
            ],
          ),
        );
      },
    );
  }
}

// vim: set ts=2 sw=2 ai:
