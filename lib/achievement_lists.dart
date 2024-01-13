import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/store/store.dart';

class AchievementLists extends StatelessWidget {
  const AchievementLists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Achievements?>(
        converter: (store) => store.state.achievements,
        builder: (ctx, achievements) {
          if (achievements == null) {
            return const SizedBox.shrink();
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Unlocked (${achievements.unlocked.length}/${achievements.all.length})",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ...achievements.unlocked.map((achievement) {
                return AchievementCard(achievement: achievement);
              }).toList(),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Locked (${achievements.all.length - achievements.unlocked.length}/${achievements.all.length})",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ...achievements.all.values
                  .where((a) =>
                      achievements.unlocked
                          .every((e) => e.achieveId != a.achieveId) &&
                      a.achieveId != null)
                  .map((achievement) {
                return AchievementCard(achievement: achievement);
              }).toList(),
            ],
          );
        });
  }
}

class AchievementCard extends StatelessWidget {
  final Achievement achievement;
  const AchievementCard({super.key, required this.achievement});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [
        StoreConnector<AppState, CDNInfo?>(
          converter: (store) => store.state.cdnInfo,
          builder: (ctx, cdnInfo) => Padding(
            padding: const EdgeInsets.all(12).copyWith(right: 15),
            child: CachedNetworkImage(
              errorWidget: (context, url, error) => Text(error.toString()),
              imageUrl:
                  "https:${cdnInfo?.cdn}/achievements/${achievement.achieveId?.toString().padLeft(3, '0')}.png",
              width: 70,
            ),
          ),
        ),
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                achievement.name ?? "N/A",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 5),
                child: Text(
                  achievement.desc ?? "N/A",
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
