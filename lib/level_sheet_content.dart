import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mygameinfo/game_report_sheet_content.dart';
import 'package:mygameinfo/level_card.dart';

import 'achievement_lists.dart';
import 'level_card_carousel.dart';

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
            child: Center(
              child: SafeArea(
                top: false,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: min(900, MediaQuery.of(context).size.width)),
                  child: const Column(
                    children: [
                      LevelCardCarousel(),
                      AchievementLists(),
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
