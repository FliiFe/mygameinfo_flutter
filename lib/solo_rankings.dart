import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/game_report_sheet_content.dart';
import 'package:mygameinfo/store/module.dart';

class SoloRankings extends StatelessWidget {
  final GameReport gameReport;
  final ShortGameReport shortReport;
  const SoloRankings({super.key, required this.gameReport, required this.shortReport});

  @override
  Widget build(BuildContext context) {
    if (gameReport.userGames?.isEmpty != false) {
      return const SizedBox.shrink();
    }
    final soloStats = gameReport.userGames!;
    return StoreConnector<AppState, int?>(
      converter: (store) => store.state.loginInfo?.userId,
      builder: (context, userId) => CupertinoListSection.insetGrouped(
        header: const Text("Solo scores"),
        children: [
          ...soloStats.map((userStats) {
            return CupertinoListTile(
              title: Text(
                userStats.alias ?? "N/A",
                style: TextStyle(
                  color: shortReport.game == "solo" ? null : teamColors.elementAtOrNull(userStats.teamId ?? -1),
                  fontWeight:
                      userStats.omembId == userId ? FontWeight.bold : null,
                ),
              ),
              trailing: Text(userStats.score?.toString() ?? "0"),
              additionalInfo: Text("${userStats.accuracy ?? 0}%"),
              leading: Text("#${userStats.rank}"),
              leadingSize: 35,
            );
          })
        ],
      ),
    );
  }
}
