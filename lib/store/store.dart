import '../api/api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class AppState with _$AppState {
  @JsonSerializable(explicitToJson: true)
  const factory AppState({
    @Default("") String email,
    @Default("") String password,
    @Default(false) bool loggedIn,
    ApiLoginInfo? loginInfo,
    AccuracyRatioInfo? accuracyRatioInfo,
    UserLevelInfo? userLevelInfo,
    Achievements? achievements,
    @Default([]) List<ShortGameReport> shortGameReports,
    String? error,
    @Default(false) bool loading,
    @Default(0) int lastLoginAttempt,
    CDNInfo? cdnInfo,
    @Default({}) Map<int, GameReport> gameReports,
  }) = _AppState;

  factory AppState.fromJson(Map<String, Object?> json) => _$AppStateFromJson(json);

  static AppState initialState() =>
      const AppState();
}
