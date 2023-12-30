import 'package:flutter/cupertino.dart';
import 'package:mygameinfo/game_report_sheet_content.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TeamRanking extends StatelessWidget {
  final Map<String, int> teams;
  const TeamRanking({super.key, required this.teams});

  @override
  Widget build(BuildContext context) {
    var sortedScores = teams.entries.toList();
    sortedScores.sort((a, b) => b.value - a.value);
    if (sortedScores.isEmpty) {
      return const SizedBox.shrink();
    }
    final maxScore = sortedScores.first.value;
    Map<String, int> rank = {};
    for (var kv in sortedScores) {
      rank[kv.key] = sortedScores.indexOf(kv) + 1;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Team scores",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
          ),
          ...sortedScores.map((keyvalue) {
            return Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: LinearPercentIndicator(
                barRadius: const Radius.circular(10),
                lineHeight: 20,
                backgroundColor: const Color(0x00000000),
                progressColor:
                    teamColors.elementAtOrNull(int.parse(keyvalue.key)) ??
                        CupertinoColors.systemPurple,
                percent: keyvalue.value / maxScore,
                trailing: Text(
                  keyvalue.value.toString(),
                  style: CupertinoTheme.of(context).textTheme.textStyle,
                ),
                leading: SizedBox(
                  width: 25,
                  child: Text(
                    "#${rank[keyvalue.key]}",
                    style: CupertinoTheme.of(context).textTheme.textStyle,
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

