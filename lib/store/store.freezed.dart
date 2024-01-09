// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get loggedIn => throw _privateConstructorUsedError;
  ApiLoginInfo? get loginInfo => throw _privateConstructorUsedError;
  AccuracyRatioInfo? get accuracyRatioInfo =>
      throw _privateConstructorUsedError;
  UserLevelInfo? get userLevelInfo => throw _privateConstructorUsedError;
  Achievements? get achievements => throw _privateConstructorUsedError;
  List<ShortGameReport> get shortGameReports =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  int get lastLoginAttempt => throw _privateConstructorUsedError;
  CDNInfo? get cdnInfo => throw _privateConstructorUsedError;
  Map<int, GameReport> get gameReports => throw _privateConstructorUsedError;
  int get taskCount => throw _privateConstructorUsedError;
  List<LevelDescription> get levelDescriptions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {String email,
      String password,
      bool loggedIn,
      ApiLoginInfo? loginInfo,
      AccuracyRatioInfo? accuracyRatioInfo,
      UserLevelInfo? userLevelInfo,
      Achievements? achievements,
      List<ShortGameReport> shortGameReports,
      String? error,
      bool loading,
      int lastLoginAttempt,
      CDNInfo? cdnInfo,
      Map<int, GameReport> gameReports,
      int taskCount,
      List<LevelDescription> levelDescriptions});

  $ApiLoginInfoCopyWith<$Res>? get loginInfo;
  $AccuracyRatioInfoCopyWith<$Res>? get accuracyRatioInfo;
  $UserLevelInfoCopyWith<$Res>? get userLevelInfo;
  $AchievementsCopyWith<$Res>? get achievements;
  $CDNInfoCopyWith<$Res>? get cdnInfo;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? loggedIn = null,
    Object? loginInfo = freezed,
    Object? accuracyRatioInfo = freezed,
    Object? userLevelInfo = freezed,
    Object? achievements = freezed,
    Object? shortGameReports = null,
    Object? error = freezed,
    Object? loading = null,
    Object? lastLoginAttempt = null,
    Object? cdnInfo = freezed,
    Object? gameReports = null,
    Object? taskCount = null,
    Object? levelDescriptions = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loginInfo: freezed == loginInfo
          ? _value.loginInfo
          : loginInfo // ignore: cast_nullable_to_non_nullable
              as ApiLoginInfo?,
      accuracyRatioInfo: freezed == accuracyRatioInfo
          ? _value.accuracyRatioInfo
          : accuracyRatioInfo // ignore: cast_nullable_to_non_nullable
              as AccuracyRatioInfo?,
      userLevelInfo: freezed == userLevelInfo
          ? _value.userLevelInfo
          : userLevelInfo // ignore: cast_nullable_to_non_nullable
              as UserLevelInfo?,
      achievements: freezed == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as Achievements?,
      shortGameReports: null == shortGameReports
          ? _value.shortGameReports
          : shortGameReports // ignore: cast_nullable_to_non_nullable
              as List<ShortGameReport>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      lastLoginAttempt: null == lastLoginAttempt
          ? _value.lastLoginAttempt
          : lastLoginAttempt // ignore: cast_nullable_to_non_nullable
              as int,
      cdnInfo: freezed == cdnInfo
          ? _value.cdnInfo
          : cdnInfo // ignore: cast_nullable_to_non_nullable
              as CDNInfo?,
      gameReports: null == gameReports
          ? _value.gameReports
          : gameReports // ignore: cast_nullable_to_non_nullable
              as Map<int, GameReport>,
      taskCount: null == taskCount
          ? _value.taskCount
          : taskCount // ignore: cast_nullable_to_non_nullable
              as int,
      levelDescriptions: null == levelDescriptions
          ? _value.levelDescriptions
          : levelDescriptions // ignore: cast_nullable_to_non_nullable
              as List<LevelDescription>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiLoginInfoCopyWith<$Res>? get loginInfo {
    if (_value.loginInfo == null) {
      return null;
    }

    return $ApiLoginInfoCopyWith<$Res>(_value.loginInfo!, (value) {
      return _then(_value.copyWith(loginInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccuracyRatioInfoCopyWith<$Res>? get accuracyRatioInfo {
    if (_value.accuracyRatioInfo == null) {
      return null;
    }

    return $AccuracyRatioInfoCopyWith<$Res>(_value.accuracyRatioInfo!, (value) {
      return _then(_value.copyWith(accuracyRatioInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLevelInfoCopyWith<$Res>? get userLevelInfo {
    if (_value.userLevelInfo == null) {
      return null;
    }

    return $UserLevelInfoCopyWith<$Res>(_value.userLevelInfo!, (value) {
      return _then(_value.copyWith(userLevelInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AchievementsCopyWith<$Res>? get achievements {
    if (_value.achievements == null) {
      return null;
    }

    return $AchievementsCopyWith<$Res>(_value.achievements!, (value) {
      return _then(_value.copyWith(achievements: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CDNInfoCopyWith<$Res>? get cdnInfo {
    if (_value.cdnInfo == null) {
      return null;
    }

    return $CDNInfoCopyWith<$Res>(_value.cdnInfo!, (value) {
      return _then(_value.copyWith(cdnInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      bool loggedIn,
      ApiLoginInfo? loginInfo,
      AccuracyRatioInfo? accuracyRatioInfo,
      UserLevelInfo? userLevelInfo,
      Achievements? achievements,
      List<ShortGameReport> shortGameReports,
      String? error,
      bool loading,
      int lastLoginAttempt,
      CDNInfo? cdnInfo,
      Map<int, GameReport> gameReports,
      int taskCount,
      List<LevelDescription> levelDescriptions});

  @override
  $ApiLoginInfoCopyWith<$Res>? get loginInfo;
  @override
  $AccuracyRatioInfoCopyWith<$Res>? get accuracyRatioInfo;
  @override
  $UserLevelInfoCopyWith<$Res>? get userLevelInfo;
  @override
  $AchievementsCopyWith<$Res>? get achievements;
  @override
  $CDNInfoCopyWith<$Res>? get cdnInfo;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? loggedIn = null,
    Object? loginInfo = freezed,
    Object? accuracyRatioInfo = freezed,
    Object? userLevelInfo = freezed,
    Object? achievements = freezed,
    Object? shortGameReports = null,
    Object? error = freezed,
    Object? loading = null,
    Object? lastLoginAttempt = null,
    Object? cdnInfo = freezed,
    Object? gameReports = null,
    Object? taskCount = null,
    Object? levelDescriptions = null,
  }) {
    return _then(_$AppStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loginInfo: freezed == loginInfo
          ? _value.loginInfo
          : loginInfo // ignore: cast_nullable_to_non_nullable
              as ApiLoginInfo?,
      accuracyRatioInfo: freezed == accuracyRatioInfo
          ? _value.accuracyRatioInfo
          : accuracyRatioInfo // ignore: cast_nullable_to_non_nullable
              as AccuracyRatioInfo?,
      userLevelInfo: freezed == userLevelInfo
          ? _value.userLevelInfo
          : userLevelInfo // ignore: cast_nullable_to_non_nullable
              as UserLevelInfo?,
      achievements: freezed == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as Achievements?,
      shortGameReports: null == shortGameReports
          ? _value._shortGameReports
          : shortGameReports // ignore: cast_nullable_to_non_nullable
              as List<ShortGameReport>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      lastLoginAttempt: null == lastLoginAttempt
          ? _value.lastLoginAttempt
          : lastLoginAttempt // ignore: cast_nullable_to_non_nullable
              as int,
      cdnInfo: freezed == cdnInfo
          ? _value.cdnInfo
          : cdnInfo // ignore: cast_nullable_to_non_nullable
              as CDNInfo?,
      gameReports: null == gameReports
          ? _value._gameReports
          : gameReports // ignore: cast_nullable_to_non_nullable
              as Map<int, GameReport>,
      taskCount: null == taskCount
          ? _value.taskCount
          : taskCount // ignore: cast_nullable_to_non_nullable
              as int,
      levelDescriptions: null == levelDescriptions
          ? _value._levelDescriptions
          : levelDescriptions // ignore: cast_nullable_to_non_nullable
              as List<LevelDescription>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AppStateImpl with DiagnosticableTreeMixin implements _AppState {
  const _$AppStateImpl(
      {this.email = "",
      this.password = "",
      this.loggedIn = false,
      this.loginInfo,
      this.accuracyRatioInfo,
      this.userLevelInfo,
      this.achievements,
      final List<ShortGameReport> shortGameReports = const [],
      this.error,
      this.loading = false,
      this.lastLoginAttempt = 0,
      this.cdnInfo,
      final Map<int, GameReport> gameReports = const {},
      this.taskCount = 0,
      final List<LevelDescription> levelDescriptions = const []})
      : _shortGameReports = shortGameReports,
        _gameReports = gameReports,
        _levelDescriptions = levelDescriptions;

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool loggedIn;
  @override
  final ApiLoginInfo? loginInfo;
  @override
  final AccuracyRatioInfo? accuracyRatioInfo;
  @override
  final UserLevelInfo? userLevelInfo;
  @override
  final Achievements? achievements;
  final List<ShortGameReport> _shortGameReports;
  @override
  @JsonKey()
  List<ShortGameReport> get shortGameReports {
    if (_shortGameReports is EqualUnmodifiableListView)
      return _shortGameReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shortGameReports);
  }

  @override
  final String? error;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final int lastLoginAttempt;
  @override
  final CDNInfo? cdnInfo;
  final Map<int, GameReport> _gameReports;
  @override
  @JsonKey()
  Map<int, GameReport> get gameReports {
    if (_gameReports is EqualUnmodifiableMapView) return _gameReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_gameReports);
  }

  @override
  @JsonKey()
  final int taskCount;
  final List<LevelDescription> _levelDescriptions;
  @override
  @JsonKey()
  List<LevelDescription> get levelDescriptions {
    if (_levelDescriptions is EqualUnmodifiableListView)
      return _levelDescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_levelDescriptions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(email: $email, password: $password, loggedIn: $loggedIn, loginInfo: $loginInfo, accuracyRatioInfo: $accuracyRatioInfo, userLevelInfo: $userLevelInfo, achievements: $achievements, shortGameReports: $shortGameReports, error: $error, loading: $loading, lastLoginAttempt: $lastLoginAttempt, cdnInfo: $cdnInfo, gameReports: $gameReports, taskCount: $taskCount, levelDescriptions: $levelDescriptions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('loggedIn', loggedIn))
      ..add(DiagnosticsProperty('loginInfo', loginInfo))
      ..add(DiagnosticsProperty('accuracyRatioInfo', accuracyRatioInfo))
      ..add(DiagnosticsProperty('userLevelInfo', userLevelInfo))
      ..add(DiagnosticsProperty('achievements', achievements))
      ..add(DiagnosticsProperty('shortGameReports', shortGameReports))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('lastLoginAttempt', lastLoginAttempt))
      ..add(DiagnosticsProperty('cdnInfo', cdnInfo))
      ..add(DiagnosticsProperty('gameReports', gameReports))
      ..add(DiagnosticsProperty('taskCount', taskCount))
      ..add(DiagnosticsProperty('levelDescriptions', levelDescriptions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.loggedIn, loggedIn) ||
                other.loggedIn == loggedIn) &&
            (identical(other.loginInfo, loginInfo) ||
                other.loginInfo == loginInfo) &&
            (identical(other.accuracyRatioInfo, accuracyRatioInfo) ||
                other.accuracyRatioInfo == accuracyRatioInfo) &&
            (identical(other.userLevelInfo, userLevelInfo) ||
                other.userLevelInfo == userLevelInfo) &&
            (identical(other.achievements, achievements) ||
                other.achievements == achievements) &&
            const DeepCollectionEquality()
                .equals(other._shortGameReports, _shortGameReports) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.lastLoginAttempt, lastLoginAttempt) ||
                other.lastLoginAttempt == lastLoginAttempt) &&
            (identical(other.cdnInfo, cdnInfo) || other.cdnInfo == cdnInfo) &&
            const DeepCollectionEquality()
                .equals(other._gameReports, _gameReports) &&
            (identical(other.taskCount, taskCount) ||
                other.taskCount == taskCount) &&
            const DeepCollectionEquality()
                .equals(other._levelDescriptions, _levelDescriptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      loggedIn,
      loginInfo,
      accuracyRatioInfo,
      userLevelInfo,
      achievements,
      const DeepCollectionEquality().hash(_shortGameReports),
      error,
      loading,
      lastLoginAttempt,
      cdnInfo,
      const DeepCollectionEquality().hash(_gameReports),
      taskCount,
      const DeepCollectionEquality().hash(_levelDescriptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final String email,
      final String password,
      final bool loggedIn,
      final ApiLoginInfo? loginInfo,
      final AccuracyRatioInfo? accuracyRatioInfo,
      final UserLevelInfo? userLevelInfo,
      final Achievements? achievements,
      final List<ShortGameReport> shortGameReports,
      final String? error,
      final bool loading,
      final int lastLoginAttempt,
      final CDNInfo? cdnInfo,
      final Map<int, GameReport> gameReports,
      final int taskCount,
      final List<LevelDescription> levelDescriptions}) = _$AppStateImpl;

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  bool get loggedIn;
  @override
  ApiLoginInfo? get loginInfo;
  @override
  AccuracyRatioInfo? get accuracyRatioInfo;
  @override
  UserLevelInfo? get userLevelInfo;
  @override
  Achievements? get achievements;
  @override
  List<ShortGameReport> get shortGameReports;
  @override
  String? get error;
  @override
  bool get loading;
  @override
  int get lastLoginAttempt;
  @override
  CDNInfo? get cdnInfo;
  @override
  Map<int, GameReport> get gameReports;
  @override
  int get taskCount;
  @override
  List<LevelDescription> get levelDescriptions;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
