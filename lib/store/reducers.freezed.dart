// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reducers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartApiHydrationAction {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartApiHydrationActionCopyWith<StartApiHydrationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartApiHydrationActionCopyWith<$Res> {
  factory $StartApiHydrationActionCopyWith(StartApiHydrationAction value,
          $Res Function(StartApiHydrationAction) then) =
      _$StartApiHydrationActionCopyWithImpl<$Res, StartApiHydrationAction>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$StartApiHydrationActionCopyWithImpl<$Res,
        $Val extends StartApiHydrationAction>
    implements $StartApiHydrationActionCopyWith<$Res> {
  _$StartApiHydrationActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartApiHydrationActionImplCopyWith<$Res>
    implements $StartApiHydrationActionCopyWith<$Res> {
  factory _$$StartApiHydrationActionImplCopyWith(
          _$StartApiHydrationActionImpl value,
          $Res Function(_$StartApiHydrationActionImpl) then) =
      __$$StartApiHydrationActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$StartApiHydrationActionImplCopyWithImpl<$Res>
    extends _$StartApiHydrationActionCopyWithImpl<$Res,
        _$StartApiHydrationActionImpl>
    implements _$$StartApiHydrationActionImplCopyWith<$Res> {
  __$$StartApiHydrationActionImplCopyWithImpl(
      _$StartApiHydrationActionImpl _value,
      $Res Function(_$StartApiHydrationActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$StartApiHydrationActionImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartApiHydrationActionImpl implements _StartApiHydrationAction {
  const _$StartApiHydrationActionImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'StartApiHydrationAction(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartApiHydrationActionImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartApiHydrationActionImplCopyWith<_$StartApiHydrationActionImpl>
      get copyWith => __$$StartApiHydrationActionImplCopyWithImpl<
          _$StartApiHydrationActionImpl>(this, _$identity);
}

abstract class _StartApiHydrationAction implements StartApiHydrationAction {
  const factory _StartApiHydrationAction(
      {required final String email,
      required final String password}) = _$StartApiHydrationActionImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$StartApiHydrationActionImplCopyWith<_$StartApiHydrationActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RaiseExceptionAction {
  Object? get exception => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RaiseExceptionActionCopyWith<RaiseExceptionAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RaiseExceptionActionCopyWith<$Res> {
  factory $RaiseExceptionActionCopyWith(RaiseExceptionAction value,
          $Res Function(RaiseExceptionAction) then) =
      _$RaiseExceptionActionCopyWithImpl<$Res, RaiseExceptionAction>;
  @useResult
  $Res call({Object? exception, String message});
}

/// @nodoc
class _$RaiseExceptionActionCopyWithImpl<$Res,
        $Val extends RaiseExceptionAction>
    implements $RaiseExceptionActionCopyWith<$Res> {
  _$RaiseExceptionActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      exception: freezed == exception ? _value.exception : exception,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RaiseExceptionActionImplCopyWith<$Res>
    implements $RaiseExceptionActionCopyWith<$Res> {
  factory _$$RaiseExceptionActionImplCopyWith(_$RaiseExceptionActionImpl value,
          $Res Function(_$RaiseExceptionActionImpl) then) =
      __$$RaiseExceptionActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? exception, String message});
}

/// @nodoc
class __$$RaiseExceptionActionImplCopyWithImpl<$Res>
    extends _$RaiseExceptionActionCopyWithImpl<$Res, _$RaiseExceptionActionImpl>
    implements _$$RaiseExceptionActionImplCopyWith<$Res> {
  __$$RaiseExceptionActionImplCopyWithImpl(_$RaiseExceptionActionImpl _value,
      $Res Function(_$RaiseExceptionActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? message = null,
  }) {
    return _then(_$RaiseExceptionActionImpl(
      exception: freezed == exception ? _value.exception : exception,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RaiseExceptionActionImpl implements _RaiseExceptionAction {
  const _$RaiseExceptionActionImpl(
      {required this.exception, required this.message});

  @override
  final Object? exception;
  @override
  final String message;

  @override
  String toString() {
    return 'RaiseExceptionAction(exception: $exception, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaiseExceptionActionImpl &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(exception), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RaiseExceptionActionImplCopyWith<_$RaiseExceptionActionImpl>
      get copyWith =>
          __$$RaiseExceptionActionImplCopyWithImpl<_$RaiseExceptionActionImpl>(
              this, _$identity);
}

abstract class _RaiseExceptionAction implements RaiseExceptionAction {
  const factory _RaiseExceptionAction(
      {required final Object? exception,
      required final String message}) = _$RaiseExceptionActionImpl;

  @override
  Object? get exception;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RaiseExceptionActionImplCopyWith<_$RaiseExceptionActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SaveApiLoginInfoAction {
  ApiLoginInfo get loginInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveApiLoginInfoActionCopyWith<SaveApiLoginInfoAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveApiLoginInfoActionCopyWith<$Res> {
  factory $SaveApiLoginInfoActionCopyWith(SaveApiLoginInfoAction value,
          $Res Function(SaveApiLoginInfoAction) then) =
      _$SaveApiLoginInfoActionCopyWithImpl<$Res, SaveApiLoginInfoAction>;
  @useResult
  $Res call({ApiLoginInfo loginInfo});

  $ApiLoginInfoCopyWith<$Res> get loginInfo;
}

/// @nodoc
class _$SaveApiLoginInfoActionCopyWithImpl<$Res,
        $Val extends SaveApiLoginInfoAction>
    implements $SaveApiLoginInfoActionCopyWith<$Res> {
  _$SaveApiLoginInfoActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginInfo = null,
  }) {
    return _then(_value.copyWith(
      loginInfo: null == loginInfo
          ? _value.loginInfo
          : loginInfo // ignore: cast_nullable_to_non_nullable
              as ApiLoginInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiLoginInfoCopyWith<$Res> get loginInfo {
    return $ApiLoginInfoCopyWith<$Res>(_value.loginInfo, (value) {
      return _then(_value.copyWith(loginInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveApiLoginInfoActionImplCopyWith<$Res>
    implements $SaveApiLoginInfoActionCopyWith<$Res> {
  factory _$$SaveApiLoginInfoActionImplCopyWith(
          _$SaveApiLoginInfoActionImpl value,
          $Res Function(_$SaveApiLoginInfoActionImpl) then) =
      __$$SaveApiLoginInfoActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiLoginInfo loginInfo});

  @override
  $ApiLoginInfoCopyWith<$Res> get loginInfo;
}

/// @nodoc
class __$$SaveApiLoginInfoActionImplCopyWithImpl<$Res>
    extends _$SaveApiLoginInfoActionCopyWithImpl<$Res,
        _$SaveApiLoginInfoActionImpl>
    implements _$$SaveApiLoginInfoActionImplCopyWith<$Res> {
  __$$SaveApiLoginInfoActionImplCopyWithImpl(
      _$SaveApiLoginInfoActionImpl _value,
      $Res Function(_$SaveApiLoginInfoActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginInfo = null,
  }) {
    return _then(_$SaveApiLoginInfoActionImpl(
      loginInfo: null == loginInfo
          ? _value.loginInfo
          : loginInfo // ignore: cast_nullable_to_non_nullable
              as ApiLoginInfo,
    ));
  }
}

/// @nodoc

class _$SaveApiLoginInfoActionImpl implements _SaveApiLoginInfoAction {
  const _$SaveApiLoginInfoActionImpl({required this.loginInfo});

  @override
  final ApiLoginInfo loginInfo;

  @override
  String toString() {
    return 'SaveApiLoginInfoAction(loginInfo: $loginInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveApiLoginInfoActionImpl &&
            (identical(other.loginInfo, loginInfo) ||
                other.loginInfo == loginInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveApiLoginInfoActionImplCopyWith<_$SaveApiLoginInfoActionImpl>
      get copyWith => __$$SaveApiLoginInfoActionImplCopyWithImpl<
          _$SaveApiLoginInfoActionImpl>(this, _$identity);
}

abstract class _SaveApiLoginInfoAction implements SaveApiLoginInfoAction {
  const factory _SaveApiLoginInfoAction(
      {required final ApiLoginInfo loginInfo}) = _$SaveApiLoginInfoActionImpl;

  @override
  ApiLoginInfo get loginInfo;
  @override
  @JsonKey(ignore: true)
  _$$SaveApiLoginInfoActionImplCopyWith<_$SaveApiLoginInfoActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TagStatsAction {
  AccuracyRatioInfo get tagStats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagStatsActionCopyWith<TagStatsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagStatsActionCopyWith<$Res> {
  factory $TagStatsActionCopyWith(
          TagStatsAction value, $Res Function(TagStatsAction) then) =
      _$TagStatsActionCopyWithImpl<$Res, TagStatsAction>;
  @useResult
  $Res call({AccuracyRatioInfo tagStats});

  $AccuracyRatioInfoCopyWith<$Res> get tagStats;
}

/// @nodoc
class _$TagStatsActionCopyWithImpl<$Res, $Val extends TagStatsAction>
    implements $TagStatsActionCopyWith<$Res> {
  _$TagStatsActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagStats = null,
  }) {
    return _then(_value.copyWith(
      tagStats: null == tagStats
          ? _value.tagStats
          : tagStats // ignore: cast_nullable_to_non_nullable
              as AccuracyRatioInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccuracyRatioInfoCopyWith<$Res> get tagStats {
    return $AccuracyRatioInfoCopyWith<$Res>(_value.tagStats, (value) {
      return _then(_value.copyWith(tagStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TagStatsActionImplCopyWith<$Res>
    implements $TagStatsActionCopyWith<$Res> {
  factory _$$TagStatsActionImplCopyWith(_$TagStatsActionImpl value,
          $Res Function(_$TagStatsActionImpl) then) =
      __$$TagStatsActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccuracyRatioInfo tagStats});

  @override
  $AccuracyRatioInfoCopyWith<$Res> get tagStats;
}

/// @nodoc
class __$$TagStatsActionImplCopyWithImpl<$Res>
    extends _$TagStatsActionCopyWithImpl<$Res, _$TagStatsActionImpl>
    implements _$$TagStatsActionImplCopyWith<$Res> {
  __$$TagStatsActionImplCopyWithImpl(
      _$TagStatsActionImpl _value, $Res Function(_$TagStatsActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagStats = null,
  }) {
    return _then(_$TagStatsActionImpl(
      tagStats: null == tagStats
          ? _value.tagStats
          : tagStats // ignore: cast_nullable_to_non_nullable
              as AccuracyRatioInfo,
    ));
  }
}

/// @nodoc

class _$TagStatsActionImpl implements _TagStatsAction {
  const _$TagStatsActionImpl({required this.tagStats});

  @override
  final AccuracyRatioInfo tagStats;

  @override
  String toString() {
    return 'TagStatsAction(tagStats: $tagStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagStatsActionImpl &&
            (identical(other.tagStats, tagStats) ||
                other.tagStats == tagStats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tagStats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagStatsActionImplCopyWith<_$TagStatsActionImpl> get copyWith =>
      __$$TagStatsActionImplCopyWithImpl<_$TagStatsActionImpl>(
          this, _$identity);
}

abstract class _TagStatsAction implements TagStatsAction {
  const factory _TagStatsAction({required final AccuracyRatioInfo tagStats}) =
      _$TagStatsActionImpl;

  @override
  AccuracyRatioInfo get tagStats;
  @override
  @JsonKey(ignore: true)
  _$$TagStatsActionImplCopyWith<_$TagStatsActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LevelInfoAction {
  UserLevelInfo get levelInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LevelInfoActionCopyWith<LevelInfoAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelInfoActionCopyWith<$Res> {
  factory $LevelInfoActionCopyWith(
          LevelInfoAction value, $Res Function(LevelInfoAction) then) =
      _$LevelInfoActionCopyWithImpl<$Res, LevelInfoAction>;
  @useResult
  $Res call({UserLevelInfo levelInfo});

  $UserLevelInfoCopyWith<$Res> get levelInfo;
}

/// @nodoc
class _$LevelInfoActionCopyWithImpl<$Res, $Val extends LevelInfoAction>
    implements $LevelInfoActionCopyWith<$Res> {
  _$LevelInfoActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelInfo = null,
  }) {
    return _then(_value.copyWith(
      levelInfo: null == levelInfo
          ? _value.levelInfo
          : levelInfo // ignore: cast_nullable_to_non_nullable
              as UserLevelInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLevelInfoCopyWith<$Res> get levelInfo {
    return $UserLevelInfoCopyWith<$Res>(_value.levelInfo, (value) {
      return _then(_value.copyWith(levelInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LevelInfoActionImplCopyWith<$Res>
    implements $LevelInfoActionCopyWith<$Res> {
  factory _$$LevelInfoActionImplCopyWith(_$LevelInfoActionImpl value,
          $Res Function(_$LevelInfoActionImpl) then) =
      __$$LevelInfoActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserLevelInfo levelInfo});

  @override
  $UserLevelInfoCopyWith<$Res> get levelInfo;
}

/// @nodoc
class __$$LevelInfoActionImplCopyWithImpl<$Res>
    extends _$LevelInfoActionCopyWithImpl<$Res, _$LevelInfoActionImpl>
    implements _$$LevelInfoActionImplCopyWith<$Res> {
  __$$LevelInfoActionImplCopyWithImpl(
      _$LevelInfoActionImpl _value, $Res Function(_$LevelInfoActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelInfo = null,
  }) {
    return _then(_$LevelInfoActionImpl(
      levelInfo: null == levelInfo
          ? _value.levelInfo
          : levelInfo // ignore: cast_nullable_to_non_nullable
              as UserLevelInfo,
    ));
  }
}

/// @nodoc

class _$LevelInfoActionImpl implements _LevelInfoAction {
  const _$LevelInfoActionImpl({required this.levelInfo});

  @override
  final UserLevelInfo levelInfo;

  @override
  String toString() {
    return 'LevelInfoAction(levelInfo: $levelInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelInfoActionImpl &&
            (identical(other.levelInfo, levelInfo) ||
                other.levelInfo == levelInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, levelInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelInfoActionImplCopyWith<_$LevelInfoActionImpl> get copyWith =>
      __$$LevelInfoActionImplCopyWithImpl<_$LevelInfoActionImpl>(
          this, _$identity);
}

abstract class _LevelInfoAction implements LevelInfoAction {
  const factory _LevelInfoAction({required final UserLevelInfo levelInfo}) =
      _$LevelInfoActionImpl;

  @override
  UserLevelInfo get levelInfo;
  @override
  @JsonKey(ignore: true)
  _$$LevelInfoActionImplCopyWith<_$LevelInfoActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AchievementsAction {
  Achievements get achievements => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AchievementsActionCopyWith<AchievementsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementsActionCopyWith<$Res> {
  factory $AchievementsActionCopyWith(
          AchievementsAction value, $Res Function(AchievementsAction) then) =
      _$AchievementsActionCopyWithImpl<$Res, AchievementsAction>;
  @useResult
  $Res call({Achievements achievements});

  $AchievementsCopyWith<$Res> get achievements;
}

/// @nodoc
class _$AchievementsActionCopyWithImpl<$Res, $Val extends AchievementsAction>
    implements $AchievementsActionCopyWith<$Res> {
  _$AchievementsActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achievements = null,
  }) {
    return _then(_value.copyWith(
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as Achievements,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AchievementsCopyWith<$Res> get achievements {
    return $AchievementsCopyWith<$Res>(_value.achievements, (value) {
      return _then(_value.copyWith(achievements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AchievementsActionImplCopyWith<$Res>
    implements $AchievementsActionCopyWith<$Res> {
  factory _$$AchievementsActionImplCopyWith(_$AchievementsActionImpl value,
          $Res Function(_$AchievementsActionImpl) then) =
      __$$AchievementsActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Achievements achievements});

  @override
  $AchievementsCopyWith<$Res> get achievements;
}

/// @nodoc
class __$$AchievementsActionImplCopyWithImpl<$Res>
    extends _$AchievementsActionCopyWithImpl<$Res, _$AchievementsActionImpl>
    implements _$$AchievementsActionImplCopyWith<$Res> {
  __$$AchievementsActionImplCopyWithImpl(_$AchievementsActionImpl _value,
      $Res Function(_$AchievementsActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achievements = null,
  }) {
    return _then(_$AchievementsActionImpl(
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as Achievements,
    ));
  }
}

/// @nodoc

class _$AchievementsActionImpl implements _AchievementsAction {
  const _$AchievementsActionImpl({required this.achievements});

  @override
  final Achievements achievements;

  @override
  String toString() {
    return 'AchievementsAction(achievements: $achievements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementsActionImpl &&
            (identical(other.achievements, achievements) ||
                other.achievements == achievements));
  }

  @override
  int get hashCode => Object.hash(runtimeType, achievements);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementsActionImplCopyWith<_$AchievementsActionImpl> get copyWith =>
      __$$AchievementsActionImplCopyWithImpl<_$AchievementsActionImpl>(
          this, _$identity);
}

abstract class _AchievementsAction implements AchievementsAction {
  const factory _AchievementsAction(
      {required final Achievements achievements}) = _$AchievementsActionImpl;

  @override
  Achievements get achievements;
  @override
  @JsonKey(ignore: true)
  _$$AchievementsActionImplCopyWith<_$AchievementsActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShortReportsAction {
  List<ShortGameReport> get shortReports => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortReportsActionCopyWith<ShortReportsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortReportsActionCopyWith<$Res> {
  factory $ShortReportsActionCopyWith(
          ShortReportsAction value, $Res Function(ShortReportsAction) then) =
      _$ShortReportsActionCopyWithImpl<$Res, ShortReportsAction>;
  @useResult
  $Res call({List<ShortGameReport> shortReports});
}

/// @nodoc
class _$ShortReportsActionCopyWithImpl<$Res, $Val extends ShortReportsAction>
    implements $ShortReportsActionCopyWith<$Res> {
  _$ShortReportsActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortReports = null,
  }) {
    return _then(_value.copyWith(
      shortReports: null == shortReports
          ? _value.shortReports
          : shortReports // ignore: cast_nullable_to_non_nullable
              as List<ShortGameReport>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShortReportsActionImplCopyWith<$Res>
    implements $ShortReportsActionCopyWith<$Res> {
  factory _$$ShortReportsActionImplCopyWith(_$ShortReportsActionImpl value,
          $Res Function(_$ShortReportsActionImpl) then) =
      __$$ShortReportsActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ShortGameReport> shortReports});
}

/// @nodoc
class __$$ShortReportsActionImplCopyWithImpl<$Res>
    extends _$ShortReportsActionCopyWithImpl<$Res, _$ShortReportsActionImpl>
    implements _$$ShortReportsActionImplCopyWith<$Res> {
  __$$ShortReportsActionImplCopyWithImpl(_$ShortReportsActionImpl _value,
      $Res Function(_$ShortReportsActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortReports = null,
  }) {
    return _then(_$ShortReportsActionImpl(
      shortReports: null == shortReports
          ? _value._shortReports
          : shortReports // ignore: cast_nullable_to_non_nullable
              as List<ShortGameReport>,
    ));
  }
}

/// @nodoc

class _$ShortReportsActionImpl implements _ShortReportsAction {
  const _$ShortReportsActionImpl(
      {required final List<ShortGameReport> shortReports})
      : _shortReports = shortReports;

  final List<ShortGameReport> _shortReports;
  @override
  List<ShortGameReport> get shortReports {
    if (_shortReports is EqualUnmodifiableListView) return _shortReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shortReports);
  }

  @override
  String toString() {
    return 'ShortReportsAction(shortReports: $shortReports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortReportsActionImpl &&
            const DeepCollectionEquality()
                .equals(other._shortReports, _shortReports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_shortReports));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortReportsActionImplCopyWith<_$ShortReportsActionImpl> get copyWith =>
      __$$ShortReportsActionImplCopyWithImpl<_$ShortReportsActionImpl>(
          this, _$identity);
}

abstract class _ShortReportsAction implements ShortReportsAction {
  const factory _ShortReportsAction(
          {required final List<ShortGameReport> shortReports}) =
      _$ShortReportsActionImpl;

  @override
  List<ShortGameReport> get shortReports;
  @override
  @JsonKey(ignore: true)
  _$$ShortReportsActionImplCopyWith<_$ShortReportsActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PerformLoginAction {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PerformLoginActionCopyWith<PerformLoginAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformLoginActionCopyWith<$Res> {
  factory $PerformLoginActionCopyWith(
          PerformLoginAction value, $Res Function(PerformLoginAction) then) =
      _$PerformLoginActionCopyWithImpl<$Res, PerformLoginAction>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$PerformLoginActionCopyWithImpl<$Res, $Val extends PerformLoginAction>
    implements $PerformLoginActionCopyWith<$Res> {
  _$PerformLoginActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformLoginActionImplCopyWith<$Res>
    implements $PerformLoginActionCopyWith<$Res> {
  factory _$$PerformLoginActionImplCopyWith(_$PerformLoginActionImpl value,
          $Res Function(_$PerformLoginActionImpl) then) =
      __$$PerformLoginActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$PerformLoginActionImplCopyWithImpl<$Res>
    extends _$PerformLoginActionCopyWithImpl<$Res, _$PerformLoginActionImpl>
    implements _$$PerformLoginActionImplCopyWith<$Res> {
  __$$PerformLoginActionImplCopyWithImpl(_$PerformLoginActionImpl _value,
      $Res Function(_$PerformLoginActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$PerformLoginActionImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PerformLoginActionImpl implements _PerformLoginAction {
  const _$PerformLoginActionImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'PerformLoginAction(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformLoginActionImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformLoginActionImplCopyWith<_$PerformLoginActionImpl> get copyWith =>
      __$$PerformLoginActionImplCopyWithImpl<_$PerformLoginActionImpl>(
          this, _$identity);
}

abstract class _PerformLoginAction implements PerformLoginAction {
  const factory _PerformLoginAction(
      {required final String email,
      required final String password}) = _$PerformLoginActionImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$PerformLoginActionImplCopyWith<_$PerformLoginActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterCDNInfoAction {
  CDNInfo get cdnInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterCDNInfoActionCopyWith<RegisterCDNInfoAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCDNInfoActionCopyWith<$Res> {
  factory $RegisterCDNInfoActionCopyWith(RegisterCDNInfoAction value,
          $Res Function(RegisterCDNInfoAction) then) =
      _$RegisterCDNInfoActionCopyWithImpl<$Res, RegisterCDNInfoAction>;
  @useResult
  $Res call({CDNInfo cdnInfo});

  $CDNInfoCopyWith<$Res> get cdnInfo;
}

/// @nodoc
class _$RegisterCDNInfoActionCopyWithImpl<$Res,
        $Val extends RegisterCDNInfoAction>
    implements $RegisterCDNInfoActionCopyWith<$Res> {
  _$RegisterCDNInfoActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cdnInfo = null,
  }) {
    return _then(_value.copyWith(
      cdnInfo: null == cdnInfo
          ? _value.cdnInfo
          : cdnInfo // ignore: cast_nullable_to_non_nullable
              as CDNInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CDNInfoCopyWith<$Res> get cdnInfo {
    return $CDNInfoCopyWith<$Res>(_value.cdnInfo, (value) {
      return _then(_value.copyWith(cdnInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterCDNInfoActionImplCopyWith<$Res>
    implements $RegisterCDNInfoActionCopyWith<$Res> {
  factory _$$RegisterCDNInfoActionImplCopyWith(
          _$RegisterCDNInfoActionImpl value,
          $Res Function(_$RegisterCDNInfoActionImpl) then) =
      __$$RegisterCDNInfoActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CDNInfo cdnInfo});

  @override
  $CDNInfoCopyWith<$Res> get cdnInfo;
}

/// @nodoc
class __$$RegisterCDNInfoActionImplCopyWithImpl<$Res>
    extends _$RegisterCDNInfoActionCopyWithImpl<$Res,
        _$RegisterCDNInfoActionImpl>
    implements _$$RegisterCDNInfoActionImplCopyWith<$Res> {
  __$$RegisterCDNInfoActionImplCopyWithImpl(_$RegisterCDNInfoActionImpl _value,
      $Res Function(_$RegisterCDNInfoActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cdnInfo = null,
  }) {
    return _then(_$RegisterCDNInfoActionImpl(
      cdnInfo: null == cdnInfo
          ? _value.cdnInfo
          : cdnInfo // ignore: cast_nullable_to_non_nullable
              as CDNInfo,
    ));
  }
}

/// @nodoc

class _$RegisterCDNInfoActionImpl implements _RegisterCDNInfoAction {
  const _$RegisterCDNInfoActionImpl({required this.cdnInfo});

  @override
  final CDNInfo cdnInfo;

  @override
  String toString() {
    return 'RegisterCDNInfoAction(cdnInfo: $cdnInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterCDNInfoActionImpl &&
            (identical(other.cdnInfo, cdnInfo) || other.cdnInfo == cdnInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cdnInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterCDNInfoActionImplCopyWith<_$RegisterCDNInfoActionImpl>
      get copyWith => __$$RegisterCDNInfoActionImplCopyWithImpl<
          _$RegisterCDNInfoActionImpl>(this, _$identity);
}

abstract class _RegisterCDNInfoAction implements RegisterCDNInfoAction {
  const factory _RegisterCDNInfoAction({required final CDNInfo cdnInfo}) =
      _$RegisterCDNInfoActionImpl;

  @override
  CDNInfo get cdnInfo;
  @override
  @JsonKey(ignore: true)
  _$$RegisterCDNInfoActionImplCopyWith<_$RegisterCDNInfoActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterGameReport {
  GameReport get report => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterGameReportCopyWith<RegisterGameReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterGameReportCopyWith<$Res> {
  factory $RegisterGameReportCopyWith(
          RegisterGameReport value, $Res Function(RegisterGameReport) then) =
      _$RegisterGameReportCopyWithImpl<$Res, RegisterGameReport>;
  @useResult
  $Res call({GameReport report, int id});

  $GameReportCopyWith<$Res> get report;
}

/// @nodoc
class _$RegisterGameReportCopyWithImpl<$Res, $Val extends RegisterGameReport>
    implements $RegisterGameReportCopyWith<$Res> {
  _$RegisterGameReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? report = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      report: null == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as GameReport,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameReportCopyWith<$Res> get report {
    return $GameReportCopyWith<$Res>(_value.report, (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterGameReportImplCopyWith<$Res>
    implements $RegisterGameReportCopyWith<$Res> {
  factory _$$RegisterGameReportImplCopyWith(_$RegisterGameReportImpl value,
          $Res Function(_$RegisterGameReportImpl) then) =
      __$$RegisterGameReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameReport report, int id});

  @override
  $GameReportCopyWith<$Res> get report;
}

/// @nodoc
class __$$RegisterGameReportImplCopyWithImpl<$Res>
    extends _$RegisterGameReportCopyWithImpl<$Res, _$RegisterGameReportImpl>
    implements _$$RegisterGameReportImplCopyWith<$Res> {
  __$$RegisterGameReportImplCopyWithImpl(_$RegisterGameReportImpl _value,
      $Res Function(_$RegisterGameReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? report = null,
    Object? id = null,
  }) {
    return _then(_$RegisterGameReportImpl(
      report: null == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as GameReport,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RegisterGameReportImpl implements _RegisterGameReport {
  const _$RegisterGameReportImpl({required this.report, required this.id});

  @override
  final GameReport report;
  @override
  final int id;

  @override
  String toString() {
    return 'RegisterGameReport(report: $report, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterGameReportImpl &&
            (identical(other.report, report) || other.report == report) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterGameReportImplCopyWith<_$RegisterGameReportImpl> get copyWith =>
      __$$RegisterGameReportImplCopyWithImpl<_$RegisterGameReportImpl>(
          this, _$identity);
}

abstract class _RegisterGameReport implements RegisterGameReport {
  const factory _RegisterGameReport(
      {required final GameReport report,
      required final int id}) = _$RegisterGameReportImpl;

  @override
  GameReport get report;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$RegisterGameReportImplCopyWith<_$RegisterGameReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchGameReport {
  ShortGameReport get shortReport => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchGameReportCopyWith<FetchGameReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchGameReportCopyWith<$Res> {
  factory $FetchGameReportCopyWith(
          FetchGameReport value, $Res Function(FetchGameReport) then) =
      _$FetchGameReportCopyWithImpl<$Res, FetchGameReport>;
  @useResult
  $Res call({ShortGameReport shortReport});

  $ShortGameReportCopyWith<$Res> get shortReport;
}

/// @nodoc
class _$FetchGameReportCopyWithImpl<$Res, $Val extends FetchGameReport>
    implements $FetchGameReportCopyWith<$Res> {
  _$FetchGameReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortReport = null,
  }) {
    return _then(_value.copyWith(
      shortReport: null == shortReport
          ? _value.shortReport
          : shortReport // ignore: cast_nullable_to_non_nullable
              as ShortGameReport,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShortGameReportCopyWith<$Res> get shortReport {
    return $ShortGameReportCopyWith<$Res>(_value.shortReport, (value) {
      return _then(_value.copyWith(shortReport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchGameReportImplCopyWith<$Res>
    implements $FetchGameReportCopyWith<$Res> {
  factory _$$FetchGameReportImplCopyWith(_$FetchGameReportImpl value,
          $Res Function(_$FetchGameReportImpl) then) =
      __$$FetchGameReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShortGameReport shortReport});

  @override
  $ShortGameReportCopyWith<$Res> get shortReport;
}

/// @nodoc
class __$$FetchGameReportImplCopyWithImpl<$Res>
    extends _$FetchGameReportCopyWithImpl<$Res, _$FetchGameReportImpl>
    implements _$$FetchGameReportImplCopyWith<$Res> {
  __$$FetchGameReportImplCopyWithImpl(
      _$FetchGameReportImpl _value, $Res Function(_$FetchGameReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortReport = null,
  }) {
    return _then(_$FetchGameReportImpl(
      shortReport: null == shortReport
          ? _value.shortReport
          : shortReport // ignore: cast_nullable_to_non_nullable
              as ShortGameReport,
    ));
  }
}

/// @nodoc

class _$FetchGameReportImpl implements _FetchGameReport {
  const _$FetchGameReportImpl({required this.shortReport});

  @override
  final ShortGameReport shortReport;

  @override
  String toString() {
    return 'FetchGameReport(shortReport: $shortReport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchGameReportImpl &&
            (identical(other.shortReport, shortReport) ||
                other.shortReport == shortReport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shortReport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchGameReportImplCopyWith<_$FetchGameReportImpl> get copyWith =>
      __$$FetchGameReportImplCopyWithImpl<_$FetchGameReportImpl>(
          this, _$identity);
}

abstract class _FetchGameReport implements FetchGameReport {
  const factory _FetchGameReport({required final ShortGameReport shortReport}) =
      _$FetchGameReportImpl;

  @override
  ShortGameReport get shortReport;
  @override
  @JsonKey(ignore: true)
  _$$FetchGameReportImplCopyWith<_$FetchGameReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginThenActionAction {
  dynamic get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginThenActionActionCopyWith<LoginThenActionAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginThenActionActionCopyWith<$Res> {
  factory $LoginThenActionActionCopyWith(LoginThenActionAction value,
          $Res Function(LoginThenActionAction) then) =
      _$LoginThenActionActionCopyWithImpl<$Res, LoginThenActionAction>;
  @useResult
  $Res call({dynamic action});
}

/// @nodoc
class _$LoginThenActionActionCopyWithImpl<$Res,
        $Val extends LoginThenActionAction>
    implements $LoginThenActionActionCopyWith<$Res> {
  _$LoginThenActionActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginThenActionActionImplCopyWith<$Res>
    implements $LoginThenActionActionCopyWith<$Res> {
  factory _$$LoginThenActionActionImplCopyWith(
          _$LoginThenActionActionImpl value,
          $Res Function(_$LoginThenActionActionImpl) then) =
      __$$LoginThenActionActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic action});
}

/// @nodoc
class __$$LoginThenActionActionImplCopyWithImpl<$Res>
    extends _$LoginThenActionActionCopyWithImpl<$Res,
        _$LoginThenActionActionImpl>
    implements _$$LoginThenActionActionImplCopyWith<$Res> {
  __$$LoginThenActionActionImplCopyWithImpl(_$LoginThenActionActionImpl _value,
      $Res Function(_$LoginThenActionActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_$LoginThenActionActionImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$LoginThenActionActionImpl implements _LoginThenActionAction {
  const _$LoginThenActionActionImpl({required this.action});

  @override
  final dynamic action;

  @override
  String toString() {
    return 'LoginThenActionAction(action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginThenActionActionImpl &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(action));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginThenActionActionImplCopyWith<_$LoginThenActionActionImpl>
      get copyWith => __$$LoginThenActionActionImplCopyWithImpl<
          _$LoginThenActionActionImpl>(this, _$identity);
}

abstract class _LoginThenActionAction implements LoginThenActionAction {
  const factory _LoginThenActionAction({required final dynamic action}) =
      _$LoginThenActionActionImpl;

  @override
  dynamic get action;
  @override
  @JsonKey(ignore: true)
  _$$LoginThenActionActionImplCopyWith<_$LoginThenActionActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
