import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'api.freezed.dart';
part 'api.g.dart';

@freezed
class CDNInfo with _$CDNInfo {
  const factory CDNInfo(
      {@JsonKey(name: 'cdn') String? cdn,
      @JsonKey(name: 'url') String? url}) = _CDNInfo;
  factory CDNInfo.fromJson(Map<String, Object?> json) =>
      _$CDNInfoFromJson(json);
}

Future<CDNInfo> getCDNInfo() async {
  final Uri url =
      Uri.parse("https://www.mygameinfo.com/js/config/options.min.js");
  final http.Response response = await http.get(url);
  if (response.statusCode == 200) {
    String? cdn;
    String? url;
    final RegExp regExp = RegExp(
        "^\\s+cdn\\s*:\\s*(?:'|\")([/\\w\\d-.]+)(?:'|\"),\\s*\$",
        multiLine: true);
    final RegExp regExp2 = RegExp(
        "^\\s+url2\\s*:\\s*(?:'|\")([/\\w\\d-.]+)(?:'|\"),\\s*\$",
        multiLine: true);

    final Match? match = regExp.firstMatch(response.body);
    final Match? match2 = regExp2.firstMatch(response.body);

    if (match != null && match.groupCount >= 1) {
      cdn = match.group(1);
    }
    if (match2 != null && match2.groupCount >= 1) {
      url = match2.group(1);
    }
    return CDNInfo(cdn: cdn, url: url);
  } else {
    throw Exception("Could not get CDN info!");
  }
}

Future<int> emailToUserId(String email) async {
  final Uri url = Uri.parse(
      'https://liveapi.mygameinfo.com/public/demographic/validate_email_qr');

  final String payload = jsonEncode({'user': email});

  final http.Response response = await http.post(
    url,
    headers: {'Content-Type': 'application/json; charset=UTF-8'},
    body: payload,
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    if (jsonResponse["success"] is bool && jsonResponse["success"]) {
      final id = jsonResponse["data"]?["o"];
      if (id is int) {
        return id;
      } else {
        throw Exception("User ID was not an integer during email verification");
      }
    } else {
      throw Exception("Email verification failed: ${response.body}");
    }
  } else {
    throw Exception(
        'Failed to validate email, response code: ${response.statusCode}');
  }
}

@freezed
class ApiLoginInfo with _$ApiLoginInfo {
  const ApiLoginInfo._();

  const factory ApiLoginInfo({
    @JsonKey(name: 'user_id') required int? userId,
    @JsonKey(name: 'token') required String? token,
    @JsonKey(name: 'expires_at') required int? expiresAt,
    @JsonKey(name: 'alias') required String? alias,
    @JsonKey(name: 'avatar') required String? avatar,
    @JsonKey(name: 'photo') required String? photo,
    @JsonKey(name: 'photo_use') required bool? usePhoto,
  }) = _ApiLoginInfo;
  factory ApiLoginInfo.fromJson(Map<String, Object?> json) =>
      _$ApiLoginInfoFromJson(json);

  bool get loginRequired =>
      token == null ||
      userId == null ||
      1000 * (expiresAt ?? 0) <= DateTime.now().millisecondsSinceEpoch;
}

Future<ApiLoginInfo> login(int userid, String password) async {
  final Uri url = Uri.parse(
      'https://liveapi.mygameinfo.com/public/demographic/user/login_ps');

  final String payload = jsonEncode({'oid': userid, 'ps': password});

  final http.Response response = await http.post(
    url,
    headers: {'Content-Type': 'application/json; charset=UTF-8'},
    body: payload,
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    if (jsonResponse["data"] == null ||
        jsonResponse["token"] == null ||
        jsonResponse["expires_at"] == null ||
        jsonResponse["data"]["alias"] == null) {
      throw Exception("Login failed: ${response.body}");
    }
    return ApiLoginInfo(
        userId: userid,
        token: jsonResponse["token"],
        expiresAt: jsonResponse["expires_at"],
        alias: jsonResponse["data"]["alias"],
        avatar: jsonResponse["data"]["avatar"],
        photo: jsonResponse["data"]["photo"],
        usePhoto: jsonResponse["data"]["photo_use"] == 1 ? true : false);
  } else {
    throw Exception('Failed to login, response code: ${response.statusCode}');
  }
}

@freezed
class AccuracyRatioInfo with _$AccuracyRatioInfo {
  const factory AccuracyRatioInfo({
    @JsonKey(name: 'tag_accuracy') String? tagAccuracy,
    @JsonKey(name: 'tag_ratio') String? tagRatio,
  }) = _AccuracyRatioInfo;

  factory AccuracyRatioInfo.fromJson(Map<String, Object?> json) =>
      _$AccuracyRatioInfoFromJson(json);
}

Future<AccuracyRatioInfo> tagStatInfos(String token, int userId) async {
  final Uri url = Uri.parse(
      "https://liveapi.mygameinfo.com/public/lasertag/online/user/${userId.toString()}/stats/site/0/card/0");

  final http.Response response = await http.get(
    url,
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    if (jsonResponse["data"] == null ||
        jsonResponse["data"]["tag_ratio"] == null ||
        jsonResponse["data"]["tag_accuracy"] == null) {
      throw Exception("Could not rertieve tag stats: ${response.body}");
    }
    return AccuracyRatioInfo(
        tagAccuracy: jsonResponse["data"]["tag_accuracy"],
        tagRatio: jsonResponse["data"]["tag_ratio"]);
  } else {
    throw Exception(
        'Request for tag stats failed, response code: ${response.statusCode}');
  }
}

@freezed
class UserLevelInfo with _$UserLevelInfo {
  const factory UserLevelInfo({
    @JsonKey(name: 'experience') required int? xp,
    required int? level,
    required int? id,
    required String? name,
    @JsonKey(name: 'class_name') required String? className,
    @JsonKey(name: 'class_colour') required String? classColour,
    @JsonKey(name: 'next_level') required int? nextLevel,
    @JsonKey(name: 'next_experience') required int? nextXp,
  }) = _UserLevelInfo;
  factory UserLevelInfo.fromJson(Map<String, Object?> json) =>
      _$UserLevelInfoFromJson(json);
}

Future<UserLevelInfo> levelInfos(String token, int uid) async {
  final Uri url = Uri.parse(
      "https://liveapi.mygameinfo.com/public/lasertag/online/user/${uid.toString()}/rank/site/0/card/0");

  final http.Response response = await http.get(
    url,
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    final dynamic data = jsonResponse["data"];
    if (data == null ||
        data["experience"] == null ||
        data["id"] == null ||
        data["name"] == null ||
        data["class_name"] == null ||
        data["class_colour"] == null ||
        data["next_level"] == null ||
        data["next_experience"] == null ||
        data["level"] == null) {
      throw Exception("Could not rertieve level stats: ${response.body}");
    }
    return UserLevelInfo(
        xp: data["experience"],
        level: data["level"],
        id: data["id"],
        name: data["name"],
        className: data["class_name"],
        classColour: data["class_colour"],
        nextLevel: data["next_level"],
        nextXp: data["next_experience"]);
  } else {
    throw Exception(
        'Request for level stats failed, response code: ${response.statusCode}');
  }
}

@freezed
class Achievement with _$Achievement {
  const factory Achievement({
    @JsonKey(name: 'achieve_id') int? achieveId,
    @JsonKey(name: 'lang_id') int? langId,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'desc') required String? desc,
    @JsonKey(name: 'tooltip') required String? tooltip,
  }) = _Achievement;

  factory Achievement.fromJson(Map<String, Object?> json) =>
      _$AchievementFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class Achievements with _$Achievements {
  @JsonSerializable(explicitToJson: true)
  const factory Achievements({
    required Map<int, Achievement> all,
    required List<Achievement> unlocked,
  }) = _Achievements;

  factory Achievements.fromJson(Map<String, Object?> json) =>
      _$AchievementsFromJson(json);
}

Future<Achievements> achievementsInfo(String token, int uid) async {
  final Uri url = Uri.parse(
      "https://liveapi.mygameinfo.com/public/lasertag/online/user/${uid.toString()}/achievements/unlocked/site/0/card/0/0");

  final http.Response response = await http.get(
    url,
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    final dynamic data = jsonResponse["data"];
    if (data == null || data["un"] == null || data["all"] == null) {
      throw Exception(
          "Could not rertieve achievements stats: ${response.body}");
    }
    final unlocked = data["un"];
    final all = data["all"];
    // ignore: prefer_const_constructors
    Achievements achievements = Achievements(all: {}, unlocked: []);
    if (all is Map<String, dynamic>) {
      for (var key in all.keys) {
        final intKey = int.parse(key);
        final jsonAchievement = all[key]!;
        if (jsonAchievement is Map<String, dynamic>) {
          achievements.all[intKey] = Achievement(
              achieveId: jsonAchievement["achieve_id"],
              langId: jsonAchievement["lang_id"],
              name: jsonAchievement["name"],
              desc: jsonAchievement["desc"],
              tooltip: jsonAchievement["tooltip"]);
        } else {
          throw Exception(
              "Some achievement was not a string-keyed object: $jsonAchievement");
        }
      }
    } else {
      throw Exception("Achievement list was not a string-keyed object: $all");
    }
    if (unlocked is List<dynamic>) {
      for (var i in unlocked) {
        if (i is! int) {
          throw Exception(
              "Singular unlocked achievement id was not an integer: ${i.runtimeType.toString()}");
        }
        final achievement = achievements.all[i];
        if (achievement != null) {
          achievements.unlocked.add(achievement);
        } else {
          throw Exception("Singular unlocked achievement was null: $i");
        }
      }
    } else {
      throw Exception(
          "Unlocked was not an int list: ${unlocked.runtimeType.toString()}");
    }
    return achievements;
  } else {
    throw Exception(
        'Request for achievements stats failed, response code: ${response.statusCode}');
  }
}

@freezed
class ShortGameReport with _$ShortGameReport {
  const factory ShortGameReport({
    @JsonKey(name: 'log_id') required int? logId,
    @JsonKey(name: 'site_id') required int? siteId,
    @JsonKey(name: 'game_description') required String? gameDescription,
    @JsonKey(name: 'game') required String? game,
    @JsonKey(name: 'total_players') required int? totalPlayers,
    @JsonKey(name: 'total_members') required int? totalMembers,
    @JsonKey(name: 'game_duration') required int? gameDuration,
    @JsonKey(name: 'time_code') required int? timeCode,
    @JsonKey(name: 'rank') required int? rank,
    @JsonKey(name: 'score') required int? score,
    @JsonKey(name: 'tags_for') required int? tagsFor,
    @JsonKey(name: 'tags_aga') required int? tagsAga,
    @JsonKey(name: 'accuracy') required double? accuracy,
    @JsonKey(name: 'site_name') required String? siteName,
  }) = _ShortGameReport;

  factory ShortGameReport.fromJson(Map<String, Object?> json) =>
      _$ShortGameReportFromJson(json);
}

Future<List<ShortGameReport>> shortGameReports(String token, int uid) async {
  final Uri url = Uri.parse(
      "https://liveapi.mygameinfo.com/public/lasertag/online/user/${uid.toString()}/games/site/0/card/0");

  final http.Response response = await http.get(
    url,
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    if (jsonResponse["data"] == null && jsonResponse["success"] == false) {
      throw Exception(
          "Data was empty or request unsuccessful: ${response.body}");
    }
    final data = jsonResponse["data"];
    final List<ShortGameReport> result = [];
    if (data is List<dynamic>) {
      for (var jsonReport in data) {
        result.add(ShortGameReport(
          logId: jsonReport["log_id"],
          siteId: jsonReport["site_id"],
          gameDescription: jsonReport["game_description"],
          game: jsonReport["game"],
          totalPlayers: jsonReport["total_players"],
          totalMembers: jsonReport["total_members"],
          gameDuration: jsonReport["game_duration"],
          timeCode: jsonReport["time_code"],
          rank: jsonReport["rank"],
          score: jsonReport["score"],
          tagsFor: jsonReport["tags_for"],
          tagsAga: jsonReport["tags_aga"],
          accuracy: double.parse(jsonReport["accuracy"].toString()),
          siteName: jsonReport["site_name"],
        ));
      }
    }
    return result;
  } else {
    throw Exception(
        'Request for short game reports failed, response code: ${response.statusCode}');
  }
}

@freezed
class GameReport with _$GameReport {
  const factory GameReport({
    @JsonKey(name: 'userGames') List<GameReportPlayerStat>? userGames,
    @JsonKey(name: 'teams') Map<String, int>? teams,
  }) = _GameReport;

  factory GameReport.fromJson(Map<String, Object?> json) =>
      _$GameReportFromJson(json);
}

@freezed
class GameReportPlayerStat with _$GameReportPlayerStat {
  const factory GameReportPlayerStat({
    @JsonKey(name: 'qr') String? qr,
    @JsonKey(name: 'omemb_id') int? omembId,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'team_id') int? teamId,
    @JsonKey(name: 'rank') int? rank,
    @JsonKey(name: 'tags_for') int? tagsFor,
    @JsonKey(name: 'shots_fired') int? shotsFired,
    @JsonKey(name: 'base_tags') int? baseTags,
    @JsonKey(name: 'target_tags') int? targetTags,
    @JsonKey(name: 'base_destroys') int? baseDestroys,
    @JsonKey(name: 'tags_against') int? tagsAgainst,
    @JsonKey(name: 'tags_against_members') int? tagsAgainstMembers,
    @JsonKey(name: 'alias') String? alias,
    @JsonKey(name: 'accuracy') double? accuracy,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'photo_use') int? photoUse,
    @JsonKey(name: 'photo_approved') int? photoApproved,
  }) = _GameReportPlayerStat;

  factory GameReportPlayerStat.fromJson(Map<String, Object?> json) =>
      _$GameReportPlayerStatFromJson(json);
}

Future<GameReport> fetchGameReport(
    String token, ShortGameReport shortReport) async {
  final Uri url = Uri.parse(
      "https://liveapi.mygameinfo.com/public/lasertag/game/${shortReport.logId}/site/${shortReport.siteId}/${shortReport.timeCode}");

  final http.Response response = await http.get(
    url,
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    if (jsonResponse["data"] != null) {
      return GameReport.fromJson(jsonResponse["data"]);
    }
  }
  throw Exception("Could not get full report for the game: $shortReport");
}

// vim: set ts=2 sw=2 ai:
