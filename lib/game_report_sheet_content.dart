import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/solo_rankings.dart';
import 'package:mygameinfo/store/module.dart';
import 'package:mygameinfo/team_ranking.dart';
import 'package:collection/collection.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

const teamColors = [
  CupertinoColors.systemBlue,
  CupertinoColors.systemRed,
  CupertinoColors.systemGreen,
  CupertinoColors.systemYellow,
  CupertinoColors.systemPink,
  CupertinoColors.systemTeal,
  CupertinoColors.systemMint,
  CupertinoColors.systemOrange,
  CupertinoColors.systemPurple
];

class GameReportSheetContent extends StatelessWidget {
  final ShortGameReport shortReport;
  const GameReportSheetContent({super.key, required this.shortReport});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, GameReport?>(
        converter: (store) => store.state.gameReports[shortReport.logId],
        builder: (context, gameReport) {
          if (gameReport == null) {
            return const CupertinoActivityIndicator();
          } else {
            return CupertinoPageScaffold(
              backgroundColor: CupertinoColors.systemGroupedBackground,
              navigationBar: const CupertinoNavigationBar(
                  backgroundColor: CupertinoColors.systemGroupedBackground,
                  leading: SizedBox.shrink(),
                  middle: Pill(),
                  trailing: CloseButton()),
              child: AnnotatedRegion<SystemUiOverlayStyle>(
                value: const SystemUiOverlayStyle(
                  systemNavigationBarColor: Colors.transparent,
                  systemNavigationBarDividerColor: Colors.transparent,
                ),
                child: SafeArea(
                  bottom: false,
                  child: SingleChildScrollView(
                    child: SafeArea(
                      top: false,
                      child: Column(children: [
                        if (gameReport.teams != null &&
                            shortReport.game != "solo") ...[
                          TeamRanking(teams: gameReport.teams!),
                          TeamEffectiveness(
                              gameReport: gameReport, shortReport: shortReport),
                        ],
                        PersonalStats(
                            gameReport: gameReport, shortReport: shortReport),
                        SoloRankings(
                          gameReport: gameReport,
                          shortReport: shortReport,
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            );
          }
        });
  }
}

class PersonalStats extends StatelessWidget {
  const PersonalStats({
    super.key,
    required this.gameReport,
    required this.shortReport,
  });

  final GameReport gameReport;
  final ShortGameReport shortReport;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int?>(
      converter: (store) => store.state.loginInfo?.userId,
      builder: (ctx, userId) {
        final selfTeamId = gameReport.userGames
            ?.firstWhereOrNull((userstat) => userstat.omembId == userId)
            ?.teamId;
        final accuracy = min(shortReport.accuracy! / 100, 1.0);
        final tagRatio =
            (shortReport.tagsFor ?? -1) / (shortReport.tagsAga ?? 1);
        if (shortReport.accuracy == null ||
            selfTeamId == null ||
            tagRatio < 0 ||
            !tagRatio.isFinite) {
          return const SizedBox.shrink();
        }
        final nticks = tagRatio.ceil() - 1;
        final adjustedTagRatio = tagRatio / (nticks + 1);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Accuracy",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            CustomStatProgressBar(
                color: teamColors[selfTeamId],
                stat: accuracy,
                ticks: const ["50%"]),
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 8.0),
              child: Text(
                "Tag Ratio",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            CustomStatProgressBar(
                color: teamColors[selfTeamId],
                stat: adjustedTagRatio,
                ticks: List.generate(nticks, (i) => "${100 * (i + 1)}%"),
                displayPercentage: (100 * tagRatio).toStringAsFixed(0)),
          ]),
        );
      },
    );
  }
}

class TeamEffectiveness extends StatelessWidget {
  final GameReport gameReport;
  final ShortGameReport shortReport;
  const TeamEffectiveness(
      {super.key, required this.gameReport, required this.shortReport});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int?>(
      converter: (store) => store.state.loginInfo?.userId,
      builder: (ctx, userId) {
        final selfTeamId = gameReport.userGames
            ?.firstWhereOrNull((userstat) => userstat.omembId == userId)
            ?.teamId;
        final effectiveness = (shortReport.score ?? -1) /
            (gameReport.teams?[selfTeamId.toString()] ?? 1);
        if (selfTeamId == null || effectiveness < 0) {
          return const SizedBox.shrink();
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Team Effectiveness",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            CustomStatProgressBar(
                color: teamColors[selfTeamId],
                stat: effectiveness,
                ticks: const ["50%"]),
          ]),
        );
      },
    );
  }
}

class CustomStatProgressBar extends StatelessWidget {
  const CustomStatProgressBar(
      {super.key,
      required this.color,
      required this.stat,
      required this.ticks,
      this.displayPercentage});

  final Color? color;
  final double stat;
  final List<String> ticks;
  final String? displayPercentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.all(10).copyWith(bottom: 0, top: 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.filled(2 + ticks.length,
                              const CustomVerticalSeparator(height: 20))),
                    ),
                    LinearPercentIndicator(
                      backgroundColor:
                          CupertinoColors.systemGrey.withOpacity(0.3),
                      progressColor: color,
                      percent: stat,
                      lineHeight: 10,
                      barRadius: const Radius.circular(10),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: ticks
                      .map((tick) => Text(tick,
                          style: const TextStyle(
                              fontSize: 12, color: Color(0xFF808080))))
                      .toList(),
                ),
              ],
            ),
          ),
          Text("${displayPercentage ?? (stat * 100).toStringAsFixed(0)}%"),
        ],
      ),
    );
  }
}

class CustomVerticalSeparator extends StatelessWidget {
  final double? height;
  const CustomVerticalSeparator({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: height,
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            width: 1,
            color: Color(0xFF808080),
          ),
        ),
      ),
    );
  }
}

class Pill extends StatelessWidget {
  const Pill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 8,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xff808080)),
    );
  }
}

class CloseButton extends StatelessWidget {
  const CloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          decoration: BoxDecoration(
            color: CupertinoDynamicColor.resolve(
                CupertinoColors.systemGroupedBackground, context),
            shape: BoxShape.circle,
          ),
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              CupertinoIcons.xmark,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}

// vim: set ts=2 sw=2 ai:
