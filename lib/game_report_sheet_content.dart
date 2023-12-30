import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/solo_rankings.dart';
import 'package:mygameinfo/store/module.dart';
import 'package:mygameinfo/team_ranking.dart';

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
            return SingleChildScrollView(
              controller: ModalScrollController.of(context),
              child: SizedBox(
                child: Container(
                decoration: BoxDecoration(color: CupertinoDynamicColor.resolve(CupertinoColors.systemGroupedBackground, context)),
                  child: Column(children: [
                    const Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Align(
                            child: Pill(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CloseButton(),
                        ),
                      ],
                    ),
                    if (gameReport.teams != null && shortReport.game != "solo")
                      TeamRanking(teams: gameReport.teams!),
                    SoloRankings(gameReport: gameReport),
                  ]),
                ),
              ),
            );
          }
        });
  }
}

class Pill extends StatelessWidget {
  const Pill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 3,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: CupertinoTheme.of(context).textTheme.textStyle.color),
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
