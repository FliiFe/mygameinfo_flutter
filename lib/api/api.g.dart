// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CDNInfoImpl _$$CDNInfoImplFromJson(Map<String, dynamic> json) =>
    _$CDNInfoImpl(
      cdn: json['cdn'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$CDNInfoImplToJson(_$CDNInfoImpl instance) =>
    <String, dynamic>{
      'cdn': instance.cdn,
      'url': instance.url,
    };

_$ApiLoginInfoImpl _$$ApiLoginInfoImplFromJson(Map<String, dynamic> json) =>
    _$ApiLoginInfoImpl(
      userId: json['user_id'] as int?,
      token: json['token'] as String?,
      expiresAt: json['expires_at'] as int?,
      alias: json['alias'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$ApiLoginInfoImplToJson(_$ApiLoginInfoImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'token': instance.token,
      'expires_at': instance.expiresAt,
      'alias': instance.alias,
      'avatar': instance.avatar,
    };

_$AccuracyRatioInfoImpl _$$AccuracyRatioInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AccuracyRatioInfoImpl(
      tagAccuracy: json['tag_accuracy'] as String?,
      tagRatio: json['tag_ratio'] as String?,
    );

Map<String, dynamic> _$$AccuracyRatioInfoImplToJson(
        _$AccuracyRatioInfoImpl instance) =>
    <String, dynamic>{
      'tag_accuracy': instance.tagAccuracy,
      'tag_ratio': instance.tagRatio,
    };

_$UserLevelInfoImpl _$$UserLevelInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserLevelInfoImpl(
      xp: json['experience'] as int?,
      level: json['level'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      className: json['class_name'] as String?,
      classColour: json['class_colour'] as String?,
      nextLevel: json['next_level'] as int?,
      nextXp: json['next_experience'] as int?,
    );

Map<String, dynamic> _$$UserLevelInfoImplToJson(_$UserLevelInfoImpl instance) =>
    <String, dynamic>{
      'experience': instance.xp,
      'level': instance.level,
      'id': instance.id,
      'name': instance.name,
      'class_name': instance.className,
      'class_colour': instance.classColour,
      'next_level': instance.nextLevel,
      'next_experience': instance.nextXp,
    };

_$AchievementImpl _$$AchievementImplFromJson(Map<String, dynamic> json) =>
    _$AchievementImpl(
      achieveId: json['achieve_id'] as int?,
      langId: json['lang_id'] as int?,
      name: json['name'] as String?,
      desc: json['desc'] as String?,
      tooltip: json['tooltip'] as String?,
    );

Map<String, dynamic> _$$AchievementImplToJson(_$AchievementImpl instance) =>
    <String, dynamic>{
      'achieve_id': instance.achieveId,
      'lang_id': instance.langId,
      'name': instance.name,
      'desc': instance.desc,
      'tooltip': instance.tooltip,
    };

_$AchievementsImpl _$$AchievementsImplFromJson(Map<String, dynamic> json) =>
    _$AchievementsImpl(
      all: (json['all'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            int.parse(k), Achievement.fromJson(e as Map<String, dynamic>)),
      ),
      unlocked: (json['unlocked'] as List<dynamic>)
          .map((e) => Achievement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AchievementsImplToJson(_$AchievementsImpl instance) =>
    <String, dynamic>{
      'all': instance.all.map((k, e) => MapEntry(k.toString(), e.toJson())),
      'unlocked': instance.unlocked.map((e) => e.toJson()).toList(),
    };

_$ShortGameReportImpl _$$ShortGameReportImplFromJson(
        Map<String, dynamic> json) =>
    _$ShortGameReportImpl(
      logId: json['log_id'] as int?,
      siteId: json['site_id'] as int?,
      gameDescription: json['game_description'] as String?,
      game: json['game'] as String?,
      totalPlayers: json['total_players'] as int?,
      totalMembers: json['total_members'] as int?,
      gameDuration: json['game_duration'] as int?,
      timeCode: json['time_code'] as int?,
      rank: json['rank'] as int?,
      score: json['score'] as int?,
      tagsFor: json['tags_for'] as int?,
      tagsAga: json['tags_aga'] as int?,
      accuracy: (json['accuracy'] as num?)?.toDouble(),
      siteName: json['site_name'] as String?,
    );

Map<String, dynamic> _$$ShortGameReportImplToJson(
        _$ShortGameReportImpl instance) =>
    <String, dynamic>{
      'log_id': instance.logId,
      'site_id': instance.siteId,
      'game_description': instance.gameDescription,
      'game': instance.game,
      'total_players': instance.totalPlayers,
      'total_members': instance.totalMembers,
      'game_duration': instance.gameDuration,
      'time_code': instance.timeCode,
      'rank': instance.rank,
      'score': instance.score,
      'tags_for': instance.tagsFor,
      'tags_aga': instance.tagsAga,
      'accuracy': instance.accuracy,
      'site_name': instance.siteName,
    };

_$GameReportImpl _$$GameReportImplFromJson(Map<String, dynamic> json) =>
    _$GameReportImpl(
      userGames: (json['userGames'] as List<dynamic>?)
          ?.map((e) => GameReportPlayerStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      teams: (json['teams'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
    );

Map<String, dynamic> _$$GameReportImplToJson(_$GameReportImpl instance) =>
    <String, dynamic>{
      'userGames': instance.userGames,
      'teams': instance.teams,
    };

_$GameReportPlayerStatImpl _$$GameReportPlayerStatImplFromJson(
        Map<String, dynamic> json) =>
    _$GameReportPlayerStatImpl(
      qr: json['qr'] as String?,
      omembId: json['omemb_id'] as int?,
      score: json['score'] as int?,
      teamId: json['team_id'] as int?,
      rank: json['rank'] as int?,
      tagsFor: json['tags_for'] as int?,
      shotsFired: json['shots_fired'] as int?,
      baseTags: json['base_tags'] as int?,
      targetTags: json['target_tags'] as int?,
      baseDestroys: json['base_destroys'] as int?,
      tagsAgainst: json['tags_against'] as int?,
      tagsAgainstMembers: json['tags_against_members'] as int?,
      alias: json['alias'] as String?,
      accuracy: (json['accuracy'] as num?)?.toDouble(),
      avatar: json['avatar'] as String?,
      photo: json['photo'] as String?,
      photoUse: json['photo_use'] as int?,
      photoApproved: json['photo_approved'] as int?,
    );

Map<String, dynamic> _$$GameReportPlayerStatImplToJson(
        _$GameReportPlayerStatImpl instance) =>
    <String, dynamic>{
      'qr': instance.qr,
      'omemb_id': instance.omembId,
      'score': instance.score,
      'team_id': instance.teamId,
      'rank': instance.rank,
      'tags_for': instance.tagsFor,
      'shots_fired': instance.shotsFired,
      'base_tags': instance.baseTags,
      'target_tags': instance.targetTags,
      'base_destroys': instance.baseDestroys,
      'tags_against': instance.tagsAgainst,
      'tags_against_members': instance.tagsAgainstMembers,
      'alias': instance.alias,
      'accuracy': instance.accuracy,
      'avatar': instance.avatar,
      'photo': instance.photo,
      'photo_use': instance.photoUse,
      'photo_approved': instance.photoApproved,
    };
