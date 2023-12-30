// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      email: json['email'] as String? ?? "",
      password: json['password'] as String? ?? "",
      loggedIn: json['loggedIn'] as bool? ?? false,
      loginInfo: json['loginInfo'] == null
          ? null
          : ApiLoginInfo.fromJson(json['loginInfo'] as Map<String, dynamic>),
      accuracyRatioInfo: json['accuracyRatioInfo'] == null
          ? null
          : AccuracyRatioInfo.fromJson(
              json['accuracyRatioInfo'] as Map<String, dynamic>),
      userLevelInfo: json['userLevelInfo'] == null
          ? null
          : UserLevelInfo.fromJson(
              json['userLevelInfo'] as Map<String, dynamic>),
      achievements: json['achievements'] == null
          ? null
          : Achievements.fromJson(json['achievements'] as Map<String, dynamic>),
      shortGameReports: (json['shortGameReports'] as List<dynamic>?)
              ?.map((e) => ShortGameReport.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      error: json['error'] as String?,
      loading: json['loading'] as bool? ?? false,
      lastLoginAttempt: json['lastLoginAttempt'] as int? ?? 0,
      cdnInfo: json['cdnInfo'] == null
          ? null
          : CDNInfo.fromJson(json['cdnInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'loggedIn': instance.loggedIn,
      'loginInfo': instance.loginInfo?.toJson(),
      'accuracyRatioInfo': instance.accuracyRatioInfo?.toJson(),
      'userLevelInfo': instance.userLevelInfo?.toJson(),
      'achievements': instance.achievements?.toJson(),
      'shortGameReports':
          instance.shortGameReports.map((e) => e.toJson()).toList(),
      'error': instance.error,
      'loading': instance.loading,
      'lastLoginAttempt': instance.lastLoginAttempt,
      'cdnInfo': instance.cdnInfo?.toJson(),
    };
