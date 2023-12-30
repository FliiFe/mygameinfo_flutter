import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/game_report_sheet_content.dart';
import 'package:mygameinfo/store/module.dart';

class ShortGameReportListView extends StatelessWidget {
  const ShortGameReportListView({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<ShortGameReport>>(
      converter: (store) => store.state.shortGameReports,
      builder: (ctx, shortGameReports) {
        final formatter = DateFormat("dd/MM/yyyy HH:mm");
        if (shortGameReports.isEmpty) {
          return const SizedBox.shrink();
        }
        return CupertinoListSection.insetGrouped(
          header: const Text("Played"),
          children: shortGameReports.map((report) {
            final reportDateTime = DateTime.fromMillisecondsSinceEpoch(
                    1000 * (report.timeCode ?? 0))
                .toLocal();
            return CupertinoListTile(
              leading: Icon(report.game != "solo"
                  ? CupertinoIcons.person_3
                  : CupertinoIcons.person),
              title: Text(report.gameDescription ?? "N/A"),
              subtitle: Text(
                formatter.format(reportDateTime),
              ),
              additionalInfo: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("${report.rank}/${report.totalPlayers}"),
                    Text(
                      report.siteName ?? "",
                      textScaler: const TextScaler.linear(0.8),
                    ),
                  ],
                ),
              ),
              trailing: const CupertinoListTileChevron(),
              onTap: () {
                StoreProvider.of<AppState>(context)
                    .dispatch(FetchGameReport(shortReport: report));
                if (report.logId == null) {
                  return;
                }
                showCupertinoModalBottomSheet(
                  context: context,
                  builder: (ctx) => StoreProvider<AppState>(
                    store: StoreProvider.of<AppState>(context),
                    child: GameReportSheetContent(
                      shortReport: report,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        );
      },
    );
  }
}

