import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/game_report_sheet_content.dart';
import 'package:mygameinfo/my_game_info_navigator.dart';
import 'package:mygameinfo/store/module.dart';
import 'package:sheet/route.dart';

class ShortGameReportListView extends StatelessWidget {
  const ShortGameReportListView({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<ShortGameReport>>(
      converter: (store) => store.state.shortGameReports,
      builder: (ctx, shortGameReports) {
        final formatter = DateFormat("dd/MM/yyyy HH:mm");
        if (shortGameReports.isEmpty) {
          return const SliverToBoxAdapter();
        }
        final listElements = shortGameReports.map((report) {
          final reportDateTime =
              DateTime.fromMillisecondsSinceEpoch(1000 * (report.timeCode ?? 0))
                  .toLocal();
          return PlatformListTile(
            leading: Padding(
              padding: EdgeInsets.only(left: isMaterial(context) ? 10 : 0),
              child: Icon(report.game != "solo"
                  ? PlatformIcons(context).group
                  : PlatformIcons(context).person),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(report.gameDescription ?? "N/A"),
                Text("${report.rank}/${report.totalPlayers}"),
              ],
            ),
            subtitle: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatter.format(reportDateTime),
                ),
                Text(
                  report.siteName ?? "",
                ),
              ],
            ),
            trailing: const CupertinoListTileChevron(),
            onTap: () {
              StoreProvider.of<AppState>(context)
                  .dispatch(FetchGameReport(shortReport: report));
              if (report.logId == null) {
                return;
              }
              // if (isMaterial(context)) {
                //   showMaterialModalBottomSheet(
                //     context: context,
                //     builder: (ctx) => StoreProvider<AppState>(
                //       store: StoreProvider.of<AppState>(context),
                //       child: GameReportSheetContent(
                //         shortReport: report,
                //       ),
                //     ),
                //   );
              //   Navigator.of(context).push(SheetRoute<void>(
              //     stops: [0, 0.6, 1],
              //     initialExtent: 0.6,
              //     builder: (ctx) {
              //       return Material(
              //         elevation: 2,
              //         child: StoreProvider<AppState>(
              //           store: StoreProvider.of<AppState>(context),
              //           child: GameReportSheetContent(
              //             shortReport: report,
              //           ),
              //         ),
              //       );
              //     },
              //   ));
              // } else {
                //   showCupertinoModalBottomSheet(
                //     backgroundColor: CupertinoDynamicColor.resolve(
                //         CupertinoColors.secondarySystemGroupedBackground,
                //         context),
                //     context: context,
                //     builder: (ctx) => StoreProvider<AppState>(
                //       store: StoreProvider.of<AppState>(context),
                //       child: GameReportSheetContent(
                //         shortReport: report,
                //       ),
                //     ),
                //   );
                Navigator.of(context).push(
                  CupertinoSheetRoute<void>(
                    backgroundColor: CupertinoDynamicColor.resolve(
                        CupertinoColors.systemGroupedBackground,
                        context),
                    stops: [0, 0.6, 1],
                    initialStop: 0.6,
                    builder: (ctx) {
                      return StoreProvider<AppState>(
                        store: StoreProvider.of<AppState>(context),
                        child: Material(
                        elevation: 2,
                          child: GameReportSheetContent(
                            shortReport: report,
                          ),
                        ),
                      );
                    },
                  ),
                );
                // MGINavigator.of(context).openGameReport(report);
              // }
            },
          );
        }).toList();
        return PlatformWidget(
          cupertino: (ctx, platform) => SliverToBoxAdapter(
            child: CupertinoListSection.insetGrouped(
              header: const Text("Played"),
              children: listElements,
            ),
          ),
          material: (ctx, platform) => SliverList.list(children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 5, left: 20),
              child: Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  "Played",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
            ),
            ...listElements,
          ]),
        );
      },
    );
  }
}
