// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CDNInfo _$CDNInfoFromJson(Map<String, dynamic> json) {
  return _CDNInfo.fromJson(json);
}

/// @nodoc
mixin _$CDNInfo {
  @JsonKey(name: 'cdn')
  String? get cdn => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CDNInfoCopyWith<CDNInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CDNInfoCopyWith<$Res> {
  factory $CDNInfoCopyWith(CDNInfo value, $Res Function(CDNInfo) then) =
      _$CDNInfoCopyWithImpl<$Res, CDNInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cdn') String? cdn, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$CDNInfoCopyWithImpl<$Res, $Val extends CDNInfo>
    implements $CDNInfoCopyWith<$Res> {
  _$CDNInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cdn = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      cdn: freezed == cdn
          ? _value.cdn
          : cdn // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CDNInfoImplCopyWith<$Res> implements $CDNInfoCopyWith<$Res> {
  factory _$$CDNInfoImplCopyWith(
          _$CDNInfoImpl value, $Res Function(_$CDNInfoImpl) then) =
      __$$CDNInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cdn') String? cdn, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$CDNInfoImplCopyWithImpl<$Res>
    extends _$CDNInfoCopyWithImpl<$Res, _$CDNInfoImpl>
    implements _$$CDNInfoImplCopyWith<$Res> {
  __$$CDNInfoImplCopyWithImpl(
      _$CDNInfoImpl _value, $Res Function(_$CDNInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cdn = freezed,
    Object? url = freezed,
  }) {
    return _then(_$CDNInfoImpl(
      cdn: freezed == cdn
          ? _value.cdn
          : cdn // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CDNInfoImpl with DiagnosticableTreeMixin implements _CDNInfo {
  const _$CDNInfoImpl(
      {@JsonKey(name: 'cdn') this.cdn, @JsonKey(name: 'url') this.url});

  factory _$CDNInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CDNInfoImplFromJson(json);

  @override
  @JsonKey(name: 'cdn')
  final String? cdn;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CDNInfo(cdn: $cdn, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CDNInfo'))
      ..add(DiagnosticsProperty('cdn', cdn))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CDNInfoImpl &&
            (identical(other.cdn, cdn) || other.cdn == cdn) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cdn, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CDNInfoImplCopyWith<_$CDNInfoImpl> get copyWith =>
      __$$CDNInfoImplCopyWithImpl<_$CDNInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CDNInfoImplToJson(
      this,
    );
  }
}

abstract class _CDNInfo implements CDNInfo {
  const factory _CDNInfo(
      {@JsonKey(name: 'cdn') final String? cdn,
      @JsonKey(name: 'url') final String? url}) = _$CDNInfoImpl;

  factory _CDNInfo.fromJson(Map<String, dynamic> json) = _$CDNInfoImpl.fromJson;

  @override
  @JsonKey(name: 'cdn')
  String? get cdn;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$CDNInfoImplCopyWith<_$CDNInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiLoginInfo _$ApiLoginInfoFromJson(Map<String, dynamic> json) {
  return _ApiLoginInfo.fromJson(json);
}

/// @nodoc
mixin _$ApiLoginInfo {
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  int? get expiresAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'alias')
  String? get alias => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_use')
  bool? get usePhoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiLoginInfoCopyWith<ApiLoginInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiLoginInfoCopyWith<$Res> {
  factory $ApiLoginInfoCopyWith(
          ApiLoginInfo value, $Res Function(ApiLoginInfo) then) =
      _$ApiLoginInfoCopyWithImpl<$Res, ApiLoginInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'expires_at') int? expiresAt,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'photo_use') bool? usePhoto});
}

/// @nodoc
class _$ApiLoginInfoCopyWithImpl<$Res, $Val extends ApiLoginInfo>
    implements $ApiLoginInfoCopyWith<$Res> {
  _$ApiLoginInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? token = freezed,
    Object? expiresAt = freezed,
    Object? alias = freezed,
    Object? avatar = freezed,
    Object? photo = freezed,
    Object? usePhoto = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      usePhoto: freezed == usePhoto
          ? _value.usePhoto
          : usePhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiLoginInfoImplCopyWith<$Res>
    implements $ApiLoginInfoCopyWith<$Res> {
  factory _$$ApiLoginInfoImplCopyWith(
          _$ApiLoginInfoImpl value, $Res Function(_$ApiLoginInfoImpl) then) =
      __$$ApiLoginInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'expires_at') int? expiresAt,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'photo_use') bool? usePhoto});
}

/// @nodoc
class __$$ApiLoginInfoImplCopyWithImpl<$Res>
    extends _$ApiLoginInfoCopyWithImpl<$Res, _$ApiLoginInfoImpl>
    implements _$$ApiLoginInfoImplCopyWith<$Res> {
  __$$ApiLoginInfoImplCopyWithImpl(
      _$ApiLoginInfoImpl _value, $Res Function(_$ApiLoginInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? token = freezed,
    Object? expiresAt = freezed,
    Object? alias = freezed,
    Object? avatar = freezed,
    Object? photo = freezed,
    Object? usePhoto = freezed,
  }) {
    return _then(_$ApiLoginInfoImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      usePhoto: freezed == usePhoto
          ? _value.usePhoto
          : usePhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiLoginInfoImpl extends _ApiLoginInfo with DiagnosticableTreeMixin {
  const _$ApiLoginInfoImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'expires_at') required this.expiresAt,
      @JsonKey(name: 'alias') required this.alias,
      @JsonKey(name: 'avatar') required this.avatar,
      @JsonKey(name: 'photo') required this.photo,
      @JsonKey(name: 'photo_use') required this.usePhoto})
      : super._();

  factory _$ApiLoginInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiLoginInfoImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'expires_at')
  final int? expiresAt;
  @override
  @JsonKey(name: 'alias')
  final String? alias;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;
  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'photo_use')
  final bool? usePhoto;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiLoginInfo(userId: $userId, token: $token, expiresAt: $expiresAt, alias: $alias, avatar: $avatar, photo: $photo, usePhoto: $usePhoto)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiLoginInfo'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('expiresAt', expiresAt))
      ..add(DiagnosticsProperty('alias', alias))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('usePhoto', usePhoto));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiLoginInfoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.usePhoto, usePhoto) ||
                other.usePhoto == usePhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, token, expiresAt, alias, avatar, photo, usePhoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiLoginInfoImplCopyWith<_$ApiLoginInfoImpl> get copyWith =>
      __$$ApiLoginInfoImplCopyWithImpl<_$ApiLoginInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiLoginInfoImplToJson(
      this,
    );
  }
}

abstract class _ApiLoginInfo extends ApiLoginInfo {
  const factory _ApiLoginInfo(
          {@JsonKey(name: 'user_id') required final int? userId,
          @JsonKey(name: 'token') required final String? token,
          @JsonKey(name: 'expires_at') required final int? expiresAt,
          @JsonKey(name: 'alias') required final String? alias,
          @JsonKey(name: 'avatar') required final String? avatar,
          @JsonKey(name: 'photo') required final String? photo,
          @JsonKey(name: 'photo_use') required final bool? usePhoto}) =
      _$ApiLoginInfoImpl;
  const _ApiLoginInfo._() : super._();

  factory _ApiLoginInfo.fromJson(Map<String, dynamic> json) =
      _$ApiLoginInfoImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(name: 'expires_at')
  int? get expiresAt;
  @override
  @JsonKey(name: 'alias')
  String? get alias;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  @JsonKey(name: 'photo_use')
  bool? get usePhoto;
  @override
  @JsonKey(ignore: true)
  _$$ApiLoginInfoImplCopyWith<_$ApiLoginInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccuracyRatioInfo _$AccuracyRatioInfoFromJson(Map<String, dynamic> json) {
  return _AccuracyRatioInfo.fromJson(json);
}

/// @nodoc
mixin _$AccuracyRatioInfo {
  @JsonKey(name: 'tag_accuracy')
  String? get tagAccuracy => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_ratio')
  String? get tagRatio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccuracyRatioInfoCopyWith<AccuracyRatioInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccuracyRatioInfoCopyWith<$Res> {
  factory $AccuracyRatioInfoCopyWith(
          AccuracyRatioInfo value, $Res Function(AccuracyRatioInfo) then) =
      _$AccuracyRatioInfoCopyWithImpl<$Res, AccuracyRatioInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tag_accuracy') String? tagAccuracy,
      @JsonKey(name: 'tag_ratio') String? tagRatio});
}

/// @nodoc
class _$AccuracyRatioInfoCopyWithImpl<$Res, $Val extends AccuracyRatioInfo>
    implements $AccuracyRatioInfoCopyWith<$Res> {
  _$AccuracyRatioInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagAccuracy = freezed,
    Object? tagRatio = freezed,
  }) {
    return _then(_value.copyWith(
      tagAccuracy: freezed == tagAccuracy
          ? _value.tagAccuracy
          : tagAccuracy // ignore: cast_nullable_to_non_nullable
              as String?,
      tagRatio: freezed == tagRatio
          ? _value.tagRatio
          : tagRatio // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccuracyRatioInfoImplCopyWith<$Res>
    implements $AccuracyRatioInfoCopyWith<$Res> {
  factory _$$AccuracyRatioInfoImplCopyWith(_$AccuracyRatioInfoImpl value,
          $Res Function(_$AccuracyRatioInfoImpl) then) =
      __$$AccuracyRatioInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tag_accuracy') String? tagAccuracy,
      @JsonKey(name: 'tag_ratio') String? tagRatio});
}

/// @nodoc
class __$$AccuracyRatioInfoImplCopyWithImpl<$Res>
    extends _$AccuracyRatioInfoCopyWithImpl<$Res, _$AccuracyRatioInfoImpl>
    implements _$$AccuracyRatioInfoImplCopyWith<$Res> {
  __$$AccuracyRatioInfoImplCopyWithImpl(_$AccuracyRatioInfoImpl _value,
      $Res Function(_$AccuracyRatioInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagAccuracy = freezed,
    Object? tagRatio = freezed,
  }) {
    return _then(_$AccuracyRatioInfoImpl(
      tagAccuracy: freezed == tagAccuracy
          ? _value.tagAccuracy
          : tagAccuracy // ignore: cast_nullable_to_non_nullable
              as String?,
      tagRatio: freezed == tagRatio
          ? _value.tagRatio
          : tagRatio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccuracyRatioInfoImpl
    with DiagnosticableTreeMixin
    implements _AccuracyRatioInfo {
  const _$AccuracyRatioInfoImpl(
      {@JsonKey(name: 'tag_accuracy') this.tagAccuracy,
      @JsonKey(name: 'tag_ratio') this.tagRatio});

  factory _$AccuracyRatioInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccuracyRatioInfoImplFromJson(json);

  @override
  @JsonKey(name: 'tag_accuracy')
  final String? tagAccuracy;
  @override
  @JsonKey(name: 'tag_ratio')
  final String? tagRatio;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccuracyRatioInfo(tagAccuracy: $tagAccuracy, tagRatio: $tagRatio)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccuracyRatioInfo'))
      ..add(DiagnosticsProperty('tagAccuracy', tagAccuracy))
      ..add(DiagnosticsProperty('tagRatio', tagRatio));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccuracyRatioInfoImpl &&
            (identical(other.tagAccuracy, tagAccuracy) ||
                other.tagAccuracy == tagAccuracy) &&
            (identical(other.tagRatio, tagRatio) ||
                other.tagRatio == tagRatio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tagAccuracy, tagRatio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccuracyRatioInfoImplCopyWith<_$AccuracyRatioInfoImpl> get copyWith =>
      __$$AccuracyRatioInfoImplCopyWithImpl<_$AccuracyRatioInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccuracyRatioInfoImplToJson(
      this,
    );
  }
}

abstract class _AccuracyRatioInfo implements AccuracyRatioInfo {
  const factory _AccuracyRatioInfo(
          {@JsonKey(name: 'tag_accuracy') final String? tagAccuracy,
          @JsonKey(name: 'tag_ratio') final String? tagRatio}) =
      _$AccuracyRatioInfoImpl;

  factory _AccuracyRatioInfo.fromJson(Map<String, dynamic> json) =
      _$AccuracyRatioInfoImpl.fromJson;

  @override
  @JsonKey(name: 'tag_accuracy')
  String? get tagAccuracy;
  @override
  @JsonKey(name: 'tag_ratio')
  String? get tagRatio;
  @override
  @JsonKey(ignore: true)
  _$$AccuracyRatioInfoImplCopyWith<_$AccuracyRatioInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLevelInfo _$UserLevelInfoFromJson(Map<String, dynamic> json) {
  return _UserLevelInfo.fromJson(json);
}

/// @nodoc
mixin _$UserLevelInfo {
  @JsonKey(name: 'experience')
  int? get xp => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_name')
  String? get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_colour')
  String? get classColour => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_level')
  int? get nextLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_experience')
  int? get nextXp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLevelInfoCopyWith<UserLevelInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLevelInfoCopyWith<$Res> {
  factory $UserLevelInfoCopyWith(
          UserLevelInfo value, $Res Function(UserLevelInfo) then) =
      _$UserLevelInfoCopyWithImpl<$Res, UserLevelInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'experience') int? xp,
      int? level,
      int? id,
      String? name,
      @JsonKey(name: 'class_name') String? className,
      @JsonKey(name: 'class_colour') String? classColour,
      @JsonKey(name: 'next_level') int? nextLevel,
      @JsonKey(name: 'next_experience') int? nextXp});
}

/// @nodoc
class _$UserLevelInfoCopyWithImpl<$Res, $Val extends UserLevelInfo>
    implements $UserLevelInfoCopyWith<$Res> {
  _$UserLevelInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = freezed,
    Object? level = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? className = freezed,
    Object? classColour = freezed,
    Object? nextLevel = freezed,
    Object? nextXp = freezed,
  }) {
    return _then(_value.copyWith(
      xp: freezed == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      classColour: freezed == classColour
          ? _value.classColour
          : classColour // ignore: cast_nullable_to_non_nullable
              as String?,
      nextLevel: freezed == nextLevel
          ? _value.nextLevel
          : nextLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      nextXp: freezed == nextXp
          ? _value.nextXp
          : nextXp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLevelInfoImplCopyWith<$Res>
    implements $UserLevelInfoCopyWith<$Res> {
  factory _$$UserLevelInfoImplCopyWith(
          _$UserLevelInfoImpl value, $Res Function(_$UserLevelInfoImpl) then) =
      __$$UserLevelInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'experience') int? xp,
      int? level,
      int? id,
      String? name,
      @JsonKey(name: 'class_name') String? className,
      @JsonKey(name: 'class_colour') String? classColour,
      @JsonKey(name: 'next_level') int? nextLevel,
      @JsonKey(name: 'next_experience') int? nextXp});
}

/// @nodoc
class __$$UserLevelInfoImplCopyWithImpl<$Res>
    extends _$UserLevelInfoCopyWithImpl<$Res, _$UserLevelInfoImpl>
    implements _$$UserLevelInfoImplCopyWith<$Res> {
  __$$UserLevelInfoImplCopyWithImpl(
      _$UserLevelInfoImpl _value, $Res Function(_$UserLevelInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = freezed,
    Object? level = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? className = freezed,
    Object? classColour = freezed,
    Object? nextLevel = freezed,
    Object? nextXp = freezed,
  }) {
    return _then(_$UserLevelInfoImpl(
      xp: freezed == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      classColour: freezed == classColour
          ? _value.classColour
          : classColour // ignore: cast_nullable_to_non_nullable
              as String?,
      nextLevel: freezed == nextLevel
          ? _value.nextLevel
          : nextLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      nextXp: freezed == nextXp
          ? _value.nextXp
          : nextXp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLevelInfoImpl
    with DiagnosticableTreeMixin
    implements _UserLevelInfo {
  const _$UserLevelInfoImpl(
      {@JsonKey(name: 'experience') required this.xp,
      required this.level,
      required this.id,
      required this.name,
      @JsonKey(name: 'class_name') required this.className,
      @JsonKey(name: 'class_colour') required this.classColour,
      @JsonKey(name: 'next_level') required this.nextLevel,
      @JsonKey(name: 'next_experience') required this.nextXp});

  factory _$UserLevelInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLevelInfoImplFromJson(json);

  @override
  @JsonKey(name: 'experience')
  final int? xp;
  @override
  final int? level;
  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'class_name')
  final String? className;
  @override
  @JsonKey(name: 'class_colour')
  final String? classColour;
  @override
  @JsonKey(name: 'next_level')
  final int? nextLevel;
  @override
  @JsonKey(name: 'next_experience')
  final int? nextXp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserLevelInfo(xp: $xp, level: $level, id: $id, name: $name, className: $className, classColour: $classColour, nextLevel: $nextLevel, nextXp: $nextXp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserLevelInfo'))
      ..add(DiagnosticsProperty('xp', xp))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('className', className))
      ..add(DiagnosticsProperty('classColour', classColour))
      ..add(DiagnosticsProperty('nextLevel', nextLevel))
      ..add(DiagnosticsProperty('nextXp', nextXp));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLevelInfoImpl &&
            (identical(other.xp, xp) || other.xp == xp) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.classColour, classColour) ||
                other.classColour == classColour) &&
            (identical(other.nextLevel, nextLevel) ||
                other.nextLevel == nextLevel) &&
            (identical(other.nextXp, nextXp) || other.nextXp == nextXp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, xp, level, id, name, className,
      classColour, nextLevel, nextXp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLevelInfoImplCopyWith<_$UserLevelInfoImpl> get copyWith =>
      __$$UserLevelInfoImplCopyWithImpl<_$UserLevelInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLevelInfoImplToJson(
      this,
    );
  }
}

abstract class _UserLevelInfo implements UserLevelInfo {
  const factory _UserLevelInfo(
          {@JsonKey(name: 'experience') required final int? xp,
          required final int? level,
          required final int? id,
          required final String? name,
          @JsonKey(name: 'class_name') required final String? className,
          @JsonKey(name: 'class_colour') required final String? classColour,
          @JsonKey(name: 'next_level') required final int? nextLevel,
          @JsonKey(name: 'next_experience') required final int? nextXp}) =
      _$UserLevelInfoImpl;

  factory _UserLevelInfo.fromJson(Map<String, dynamic> json) =
      _$UserLevelInfoImpl.fromJson;

  @override
  @JsonKey(name: 'experience')
  int? get xp;
  @override
  int? get level;
  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'class_name')
  String? get className;
  @override
  @JsonKey(name: 'class_colour')
  String? get classColour;
  @override
  @JsonKey(name: 'next_level')
  int? get nextLevel;
  @override
  @JsonKey(name: 'next_experience')
  int? get nextXp;
  @override
  @JsonKey(ignore: true)
  _$$UserLevelInfoImplCopyWith<_$UserLevelInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Achievement _$AchievementFromJson(Map<String, dynamic> json) {
  return _Achievement.fromJson(json);
}

/// @nodoc
mixin _$Achievement {
  @JsonKey(name: 'achieve_id')
  int? get achieveId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang_id')
  int? get langId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'desc')
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: 'tooltip')
  String? get tooltip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AchievementCopyWith<Achievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementCopyWith<$Res> {
  factory $AchievementCopyWith(
          Achievement value, $Res Function(Achievement) then) =
      _$AchievementCopyWithImpl<$Res, Achievement>;
  @useResult
  $Res call(
      {@JsonKey(name: 'achieve_id') int? achieveId,
      @JsonKey(name: 'lang_id') int? langId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'desc') String? desc,
      @JsonKey(name: 'tooltip') String? tooltip});
}

/// @nodoc
class _$AchievementCopyWithImpl<$Res, $Val extends Achievement>
    implements $AchievementCopyWith<$Res> {
  _$AchievementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achieveId = freezed,
    Object? langId = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? tooltip = freezed,
  }) {
    return _then(_value.copyWith(
      achieveId: freezed == achieveId
          ? _value.achieveId
          : achieveId // ignore: cast_nullable_to_non_nullable
              as int?,
      langId: freezed == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      tooltip: freezed == tooltip
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AchievementImplCopyWith<$Res>
    implements $AchievementCopyWith<$Res> {
  factory _$$AchievementImplCopyWith(
          _$AchievementImpl value, $Res Function(_$AchievementImpl) then) =
      __$$AchievementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'achieve_id') int? achieveId,
      @JsonKey(name: 'lang_id') int? langId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'desc') String? desc,
      @JsonKey(name: 'tooltip') String? tooltip});
}

/// @nodoc
class __$$AchievementImplCopyWithImpl<$Res>
    extends _$AchievementCopyWithImpl<$Res, _$AchievementImpl>
    implements _$$AchievementImplCopyWith<$Res> {
  __$$AchievementImplCopyWithImpl(
      _$AchievementImpl _value, $Res Function(_$AchievementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achieveId = freezed,
    Object? langId = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? tooltip = freezed,
  }) {
    return _then(_$AchievementImpl(
      achieveId: freezed == achieveId
          ? _value.achieveId
          : achieveId // ignore: cast_nullable_to_non_nullable
              as int?,
      langId: freezed == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      tooltip: freezed == tooltip
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementImpl with DiagnosticableTreeMixin implements _Achievement {
  const _$AchievementImpl(
      {@JsonKey(name: 'achieve_id') this.achieveId,
      @JsonKey(name: 'lang_id') this.langId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'desc') required this.desc,
      @JsonKey(name: 'tooltip') required this.tooltip});

  factory _$AchievementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementImplFromJson(json);

  @override
  @JsonKey(name: 'achieve_id')
  final int? achieveId;
  @override
  @JsonKey(name: 'lang_id')
  final int? langId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'desc')
  final String? desc;
  @override
  @JsonKey(name: 'tooltip')
  final String? tooltip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Achievement(achieveId: $achieveId, langId: $langId, name: $name, desc: $desc, tooltip: $tooltip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Achievement'))
      ..add(DiagnosticsProperty('achieveId', achieveId))
      ..add(DiagnosticsProperty('langId', langId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('desc', desc))
      ..add(DiagnosticsProperty('tooltip', tooltip));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementImpl &&
            (identical(other.achieveId, achieveId) ||
                other.achieveId == achieveId) &&
            (identical(other.langId, langId) || other.langId == langId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, achieveId, langId, name, desc, tooltip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
      __$$AchievementImplCopyWithImpl<_$AchievementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementImplToJson(
      this,
    );
  }
}

abstract class _Achievement implements Achievement {
  const factory _Achievement(
          {@JsonKey(name: 'achieve_id') final int? achieveId,
          @JsonKey(name: 'lang_id') final int? langId,
          @JsonKey(name: 'name') required final String? name,
          @JsonKey(name: 'desc') required final String? desc,
          @JsonKey(name: 'tooltip') required final String? tooltip}) =
      _$AchievementImpl;

  factory _Achievement.fromJson(Map<String, dynamic> json) =
      _$AchievementImpl.fromJson;

  @override
  @JsonKey(name: 'achieve_id')
  int? get achieveId;
  @override
  @JsonKey(name: 'lang_id')
  int? get langId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'desc')
  String? get desc;
  @override
  @JsonKey(name: 'tooltip')
  String? get tooltip;
  @override
  @JsonKey(ignore: true)
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Achievements _$AchievementsFromJson(Map<String, dynamic> json) {
  return _Achievements.fromJson(json);
}

/// @nodoc
mixin _$Achievements {
  Map<int, Achievement> get all => throw _privateConstructorUsedError;
  List<Achievement> get unlocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AchievementsCopyWith<Achievements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementsCopyWith<$Res> {
  factory $AchievementsCopyWith(
          Achievements value, $Res Function(Achievements) then) =
      _$AchievementsCopyWithImpl<$Res, Achievements>;
  @useResult
  $Res call({Map<int, Achievement> all, List<Achievement> unlocked});
}

/// @nodoc
class _$AchievementsCopyWithImpl<$Res, $Val extends Achievements>
    implements $AchievementsCopyWith<$Res> {
  _$AchievementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
    Object? unlocked = null,
  }) {
    return _then(_value.copyWith(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as Map<int, Achievement>,
      unlocked: null == unlocked
          ? _value.unlocked
          : unlocked // ignore: cast_nullable_to_non_nullable
              as List<Achievement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AchievementsImplCopyWith<$Res>
    implements $AchievementsCopyWith<$Res> {
  factory _$$AchievementsImplCopyWith(
          _$AchievementsImpl value, $Res Function(_$AchievementsImpl) then) =
      __$$AchievementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, Achievement> all, List<Achievement> unlocked});
}

/// @nodoc
class __$$AchievementsImplCopyWithImpl<$Res>
    extends _$AchievementsCopyWithImpl<$Res, _$AchievementsImpl>
    implements _$$AchievementsImplCopyWith<$Res> {
  __$$AchievementsImplCopyWithImpl(
      _$AchievementsImpl _value, $Res Function(_$AchievementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
    Object? unlocked = null,
  }) {
    return _then(_$AchievementsImpl(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as Map<int, Achievement>,
      unlocked: null == unlocked
          ? _value.unlocked
          : unlocked // ignore: cast_nullable_to_non_nullable
              as List<Achievement>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AchievementsImpl with DiagnosticableTreeMixin implements _Achievements {
  const _$AchievementsImpl({required this.all, required this.unlocked});

  factory _$AchievementsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementsImplFromJson(json);

  @override
  final Map<int, Achievement> all;
  @override
  final List<Achievement> unlocked;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Achievements(all: $all, unlocked: $unlocked)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Achievements'))
      ..add(DiagnosticsProperty('all', all))
      ..add(DiagnosticsProperty('unlocked', unlocked));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementsImpl &&
            const DeepCollectionEquality().equals(other.all, all) &&
            const DeepCollectionEquality().equals(other.unlocked, unlocked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(all),
      const DeepCollectionEquality().hash(unlocked));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementsImplCopyWith<_$AchievementsImpl> get copyWith =>
      __$$AchievementsImplCopyWithImpl<_$AchievementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementsImplToJson(
      this,
    );
  }
}

abstract class _Achievements implements Achievements {
  const factory _Achievements(
      {required final Map<int, Achievement> all,
      required final List<Achievement> unlocked}) = _$AchievementsImpl;

  factory _Achievements.fromJson(Map<String, dynamic> json) =
      _$AchievementsImpl.fromJson;

  @override
  Map<int, Achievement> get all;
  @override
  List<Achievement> get unlocked;
  @override
  @JsonKey(ignore: true)
  _$$AchievementsImplCopyWith<_$AchievementsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShortGameReport _$ShortGameReportFromJson(Map<String, dynamic> json) {
  return _ShortGameReport.fromJson(json);
}

/// @nodoc
mixin _$ShortGameReport {
  @JsonKey(name: 'log_id')
  int? get logId => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_id')
  int? get siteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_description')
  String? get gameDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'game')
  String? get game => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_players')
  int? get totalPlayers => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_members')
  int? get totalMembers => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_duration')
  int? get gameDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_code')
  int? get timeCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'rank')
  int? get rank => throw _privateConstructorUsedError;
  @JsonKey(name: 'score')
  int? get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags_for')
  int? get tagsFor => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags_aga')
  int? get tagsAga => throw _privateConstructorUsedError;
  @JsonKey(name: 'accuracy')
  double? get accuracy => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_name')
  String? get siteName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortGameReportCopyWith<ShortGameReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortGameReportCopyWith<$Res> {
  factory $ShortGameReportCopyWith(
          ShortGameReport value, $Res Function(ShortGameReport) then) =
      _$ShortGameReportCopyWithImpl<$Res, ShortGameReport>;
  @useResult
  $Res call(
      {@JsonKey(name: 'log_id') int? logId,
      @JsonKey(name: 'site_id') int? siteId,
      @JsonKey(name: 'game_description') String? gameDescription,
      @JsonKey(name: 'game') String? game,
      @JsonKey(name: 'total_players') int? totalPlayers,
      @JsonKey(name: 'total_members') int? totalMembers,
      @JsonKey(name: 'game_duration') int? gameDuration,
      @JsonKey(name: 'time_code') int? timeCode,
      @JsonKey(name: 'rank') int? rank,
      @JsonKey(name: 'score') int? score,
      @JsonKey(name: 'tags_for') int? tagsFor,
      @JsonKey(name: 'tags_aga') int? tagsAga,
      @JsonKey(name: 'accuracy') double? accuracy,
      @JsonKey(name: 'site_name') String? siteName});
}

/// @nodoc
class _$ShortGameReportCopyWithImpl<$Res, $Val extends ShortGameReport>
    implements $ShortGameReportCopyWith<$Res> {
  _$ShortGameReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logId = freezed,
    Object? siteId = freezed,
    Object? gameDescription = freezed,
    Object? game = freezed,
    Object? totalPlayers = freezed,
    Object? totalMembers = freezed,
    Object? gameDuration = freezed,
    Object? timeCode = freezed,
    Object? rank = freezed,
    Object? score = freezed,
    Object? tagsFor = freezed,
    Object? tagsAga = freezed,
    Object? accuracy = freezed,
    Object? siteName = freezed,
  }) {
    return _then(_value.copyWith(
      logId: freezed == logId
          ? _value.logId
          : logId // ignore: cast_nullable_to_non_nullable
              as int?,
      siteId: freezed == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameDescription: freezed == gameDescription
          ? _value.gameDescription
          : gameDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPlayers: freezed == totalPlayers
          ? _value.totalPlayers
          : totalPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMembers: freezed == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      gameDuration: freezed == gameDuration
          ? _value.gameDuration
          : gameDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      timeCode: freezed == timeCode
          ? _value.timeCode
          : timeCode // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsFor: freezed == tagsFor
          ? _value.tagsFor
          : tagsFor // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsAga: freezed == tagsAga
          ? _value.tagsAga
          : tagsAga // ignore: cast_nullable_to_non_nullable
              as int?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      siteName: freezed == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShortGameReportImplCopyWith<$Res>
    implements $ShortGameReportCopyWith<$Res> {
  factory _$$ShortGameReportImplCopyWith(_$ShortGameReportImpl value,
          $Res Function(_$ShortGameReportImpl) then) =
      __$$ShortGameReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'log_id') int? logId,
      @JsonKey(name: 'site_id') int? siteId,
      @JsonKey(name: 'game_description') String? gameDescription,
      @JsonKey(name: 'game') String? game,
      @JsonKey(name: 'total_players') int? totalPlayers,
      @JsonKey(name: 'total_members') int? totalMembers,
      @JsonKey(name: 'game_duration') int? gameDuration,
      @JsonKey(name: 'time_code') int? timeCode,
      @JsonKey(name: 'rank') int? rank,
      @JsonKey(name: 'score') int? score,
      @JsonKey(name: 'tags_for') int? tagsFor,
      @JsonKey(name: 'tags_aga') int? tagsAga,
      @JsonKey(name: 'accuracy') double? accuracy,
      @JsonKey(name: 'site_name') String? siteName});
}

/// @nodoc
class __$$ShortGameReportImplCopyWithImpl<$Res>
    extends _$ShortGameReportCopyWithImpl<$Res, _$ShortGameReportImpl>
    implements _$$ShortGameReportImplCopyWith<$Res> {
  __$$ShortGameReportImplCopyWithImpl(
      _$ShortGameReportImpl _value, $Res Function(_$ShortGameReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logId = freezed,
    Object? siteId = freezed,
    Object? gameDescription = freezed,
    Object? game = freezed,
    Object? totalPlayers = freezed,
    Object? totalMembers = freezed,
    Object? gameDuration = freezed,
    Object? timeCode = freezed,
    Object? rank = freezed,
    Object? score = freezed,
    Object? tagsFor = freezed,
    Object? tagsAga = freezed,
    Object? accuracy = freezed,
    Object? siteName = freezed,
  }) {
    return _then(_$ShortGameReportImpl(
      logId: freezed == logId
          ? _value.logId
          : logId // ignore: cast_nullable_to_non_nullable
              as int?,
      siteId: freezed == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as int?,
      gameDescription: freezed == gameDescription
          ? _value.gameDescription
          : gameDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPlayers: freezed == totalPlayers
          ? _value.totalPlayers
          : totalPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMembers: freezed == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      gameDuration: freezed == gameDuration
          ? _value.gameDuration
          : gameDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      timeCode: freezed == timeCode
          ? _value.timeCode
          : timeCode // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsFor: freezed == tagsFor
          ? _value.tagsFor
          : tagsFor // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsAga: freezed == tagsAga
          ? _value.tagsAga
          : tagsAga // ignore: cast_nullable_to_non_nullable
              as int?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      siteName: freezed == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShortGameReportImpl
    with DiagnosticableTreeMixin
    implements _ShortGameReport {
  const _$ShortGameReportImpl(
      {@JsonKey(name: 'log_id') required this.logId,
      @JsonKey(name: 'site_id') required this.siteId,
      @JsonKey(name: 'game_description') required this.gameDescription,
      @JsonKey(name: 'game') required this.game,
      @JsonKey(name: 'total_players') required this.totalPlayers,
      @JsonKey(name: 'total_members') required this.totalMembers,
      @JsonKey(name: 'game_duration') required this.gameDuration,
      @JsonKey(name: 'time_code') required this.timeCode,
      @JsonKey(name: 'rank') required this.rank,
      @JsonKey(name: 'score') required this.score,
      @JsonKey(name: 'tags_for') required this.tagsFor,
      @JsonKey(name: 'tags_aga') required this.tagsAga,
      @JsonKey(name: 'accuracy') required this.accuracy,
      @JsonKey(name: 'site_name') required this.siteName});

  factory _$ShortGameReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShortGameReportImplFromJson(json);

  @override
  @JsonKey(name: 'log_id')
  final int? logId;
  @override
  @JsonKey(name: 'site_id')
  final int? siteId;
  @override
  @JsonKey(name: 'game_description')
  final String? gameDescription;
  @override
  @JsonKey(name: 'game')
  final String? game;
  @override
  @JsonKey(name: 'total_players')
  final int? totalPlayers;
  @override
  @JsonKey(name: 'total_members')
  final int? totalMembers;
  @override
  @JsonKey(name: 'game_duration')
  final int? gameDuration;
  @override
  @JsonKey(name: 'time_code')
  final int? timeCode;
  @override
  @JsonKey(name: 'rank')
  final int? rank;
  @override
  @JsonKey(name: 'score')
  final int? score;
  @override
  @JsonKey(name: 'tags_for')
  final int? tagsFor;
  @override
  @JsonKey(name: 'tags_aga')
  final int? tagsAga;
  @override
  @JsonKey(name: 'accuracy')
  final double? accuracy;
  @override
  @JsonKey(name: 'site_name')
  final String? siteName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShortGameReport(logId: $logId, siteId: $siteId, gameDescription: $gameDescription, game: $game, totalPlayers: $totalPlayers, totalMembers: $totalMembers, gameDuration: $gameDuration, timeCode: $timeCode, rank: $rank, score: $score, tagsFor: $tagsFor, tagsAga: $tagsAga, accuracy: $accuracy, siteName: $siteName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShortGameReport'))
      ..add(DiagnosticsProperty('logId', logId))
      ..add(DiagnosticsProperty('siteId', siteId))
      ..add(DiagnosticsProperty('gameDescription', gameDescription))
      ..add(DiagnosticsProperty('game', game))
      ..add(DiagnosticsProperty('totalPlayers', totalPlayers))
      ..add(DiagnosticsProperty('totalMembers', totalMembers))
      ..add(DiagnosticsProperty('gameDuration', gameDuration))
      ..add(DiagnosticsProperty('timeCode', timeCode))
      ..add(DiagnosticsProperty('rank', rank))
      ..add(DiagnosticsProperty('score', score))
      ..add(DiagnosticsProperty('tagsFor', tagsFor))
      ..add(DiagnosticsProperty('tagsAga', tagsAga))
      ..add(DiagnosticsProperty('accuracy', accuracy))
      ..add(DiagnosticsProperty('siteName', siteName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortGameReportImpl &&
            (identical(other.logId, logId) || other.logId == logId) &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.gameDescription, gameDescription) ||
                other.gameDescription == gameDescription) &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.totalPlayers, totalPlayers) ||
                other.totalPlayers == totalPlayers) &&
            (identical(other.totalMembers, totalMembers) ||
                other.totalMembers == totalMembers) &&
            (identical(other.gameDuration, gameDuration) ||
                other.gameDuration == gameDuration) &&
            (identical(other.timeCode, timeCode) ||
                other.timeCode == timeCode) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.tagsFor, tagsFor) || other.tagsFor == tagsFor) &&
            (identical(other.tagsAga, tagsAga) || other.tagsAga == tagsAga) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      logId,
      siteId,
      gameDescription,
      game,
      totalPlayers,
      totalMembers,
      gameDuration,
      timeCode,
      rank,
      score,
      tagsFor,
      tagsAga,
      accuracy,
      siteName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortGameReportImplCopyWith<_$ShortGameReportImpl> get copyWith =>
      __$$ShortGameReportImplCopyWithImpl<_$ShortGameReportImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShortGameReportImplToJson(
      this,
    );
  }
}

abstract class _ShortGameReport implements ShortGameReport {
  const factory _ShortGameReport(
      {@JsonKey(name: 'log_id') required final int? logId,
      @JsonKey(name: 'site_id') required final int? siteId,
      @JsonKey(name: 'game_description') required final String? gameDescription,
      @JsonKey(name: 'game') required final String? game,
      @JsonKey(name: 'total_players') required final int? totalPlayers,
      @JsonKey(name: 'total_members') required final int? totalMembers,
      @JsonKey(name: 'game_duration') required final int? gameDuration,
      @JsonKey(name: 'time_code') required final int? timeCode,
      @JsonKey(name: 'rank') required final int? rank,
      @JsonKey(name: 'score') required final int? score,
      @JsonKey(name: 'tags_for') required final int? tagsFor,
      @JsonKey(name: 'tags_aga') required final int? tagsAga,
      @JsonKey(name: 'accuracy') required final double? accuracy,
      @JsonKey(name: 'site_name')
      required final String? siteName}) = _$ShortGameReportImpl;

  factory _ShortGameReport.fromJson(Map<String, dynamic> json) =
      _$ShortGameReportImpl.fromJson;

  @override
  @JsonKey(name: 'log_id')
  int? get logId;
  @override
  @JsonKey(name: 'site_id')
  int? get siteId;
  @override
  @JsonKey(name: 'game_description')
  String? get gameDescription;
  @override
  @JsonKey(name: 'game')
  String? get game;
  @override
  @JsonKey(name: 'total_players')
  int? get totalPlayers;
  @override
  @JsonKey(name: 'total_members')
  int? get totalMembers;
  @override
  @JsonKey(name: 'game_duration')
  int? get gameDuration;
  @override
  @JsonKey(name: 'time_code')
  int? get timeCode;
  @override
  @JsonKey(name: 'rank')
  int? get rank;
  @override
  @JsonKey(name: 'score')
  int? get score;
  @override
  @JsonKey(name: 'tags_for')
  int? get tagsFor;
  @override
  @JsonKey(name: 'tags_aga')
  int? get tagsAga;
  @override
  @JsonKey(name: 'accuracy')
  double? get accuracy;
  @override
  @JsonKey(name: 'site_name')
  String? get siteName;
  @override
  @JsonKey(ignore: true)
  _$$ShortGameReportImplCopyWith<_$ShortGameReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameReport _$GameReportFromJson(Map<String, dynamic> json) {
  return _GameReport.fromJson(json);
}

/// @nodoc
mixin _$GameReport {
  @JsonKey(name: 'userGames')
  List<GameReportPlayerStat>? get userGames =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'teams')
  Map<String, int>? get teams => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameReportCopyWith<GameReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameReportCopyWith<$Res> {
  factory $GameReportCopyWith(
          GameReport value, $Res Function(GameReport) then) =
      _$GameReportCopyWithImpl<$Res, GameReport>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userGames') List<GameReportPlayerStat>? userGames,
      @JsonKey(name: 'teams') Map<String, int>? teams});
}

/// @nodoc
class _$GameReportCopyWithImpl<$Res, $Val extends GameReport>
    implements $GameReportCopyWith<$Res> {
  _$GameReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userGames = freezed,
    Object? teams = freezed,
  }) {
    return _then(_value.copyWith(
      userGames: freezed == userGames
          ? _value.userGames
          : userGames // ignore: cast_nullable_to_non_nullable
              as List<GameReportPlayerStat>?,
      teams: freezed == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameReportImplCopyWith<$Res>
    implements $GameReportCopyWith<$Res> {
  factory _$$GameReportImplCopyWith(
          _$GameReportImpl value, $Res Function(_$GameReportImpl) then) =
      __$$GameReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userGames') List<GameReportPlayerStat>? userGames,
      @JsonKey(name: 'teams') Map<String, int>? teams});
}

/// @nodoc
class __$$GameReportImplCopyWithImpl<$Res>
    extends _$GameReportCopyWithImpl<$Res, _$GameReportImpl>
    implements _$$GameReportImplCopyWith<$Res> {
  __$$GameReportImplCopyWithImpl(
      _$GameReportImpl _value, $Res Function(_$GameReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userGames = freezed,
    Object? teams = freezed,
  }) {
    return _then(_$GameReportImpl(
      userGames: freezed == userGames
          ? _value._userGames
          : userGames // ignore: cast_nullable_to_non_nullable
              as List<GameReportPlayerStat>?,
      teams: freezed == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameReportImpl with DiagnosticableTreeMixin implements _GameReport {
  const _$GameReportImpl(
      {@JsonKey(name: 'userGames') final List<GameReportPlayerStat>? userGames,
      @JsonKey(name: 'teams') final Map<String, int>? teams})
      : _userGames = userGames,
        _teams = teams;

  factory _$GameReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameReportImplFromJson(json);

  final List<GameReportPlayerStat>? _userGames;
  @override
  @JsonKey(name: 'userGames')
  List<GameReportPlayerStat>? get userGames {
    final value = _userGames;
    if (value == null) return null;
    if (_userGames is EqualUnmodifiableListView) return _userGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, int>? _teams;
  @override
  @JsonKey(name: 'teams')
  Map<String, int>? get teams {
    final value = _teams;
    if (value == null) return null;
    if (_teams is EqualUnmodifiableMapView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameReport(userGames: $userGames, teams: $teams)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameReport'))
      ..add(DiagnosticsProperty('userGames', userGames))
      ..add(DiagnosticsProperty('teams', teams));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameReportImpl &&
            const DeepCollectionEquality()
                .equals(other._userGames, _userGames) &&
            const DeepCollectionEquality().equals(other._teams, _teams));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_userGames),
      const DeepCollectionEquality().hash(_teams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameReportImplCopyWith<_$GameReportImpl> get copyWith =>
      __$$GameReportImplCopyWithImpl<_$GameReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameReportImplToJson(
      this,
    );
  }
}

abstract class _GameReport implements GameReport {
  const factory _GameReport(
      {@JsonKey(name: 'userGames') final List<GameReportPlayerStat>? userGames,
      @JsonKey(name: 'teams')
      final Map<String, int>? teams}) = _$GameReportImpl;

  factory _GameReport.fromJson(Map<String, dynamic> json) =
      _$GameReportImpl.fromJson;

  @override
  @JsonKey(name: 'userGames')
  List<GameReportPlayerStat>? get userGames;
  @override
  @JsonKey(name: 'teams')
  Map<String, int>? get teams;
  @override
  @JsonKey(ignore: true)
  _$$GameReportImplCopyWith<_$GameReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameReportPlayerStat _$GameReportPlayerStatFromJson(Map<String, dynamic> json) {
  return _GameReportPlayerStat.fromJson(json);
}

/// @nodoc
mixin _$GameReportPlayerStat {
  @JsonKey(name: 'qr')
  String? get qr => throw _privateConstructorUsedError;
  @JsonKey(name: 'omemb_id')
  int? get omembId => throw _privateConstructorUsedError;
  @JsonKey(name: 'score')
  int? get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_id')
  int? get teamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rank')
  int? get rank => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags_for')
  int? get tagsFor => throw _privateConstructorUsedError;
  @JsonKey(name: 'shots_fired')
  int? get shotsFired => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_tags')
  int? get baseTags => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_tags')
  int? get targetTags => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_destroys')
  int? get baseDestroys => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags_against')
  int? get tagsAgainst => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags_against_members')
  int? get tagsAgainstMembers => throw _privateConstructorUsedError;
  @JsonKey(name: 'alias')
  String? get alias => throw _privateConstructorUsedError;
  @JsonKey(name: 'accuracy')
  double? get accuracy => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_use')
  int? get photoUse => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_approved')
  int? get photoApproved => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameReportPlayerStatCopyWith<GameReportPlayerStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameReportPlayerStatCopyWith<$Res> {
  factory $GameReportPlayerStatCopyWith(GameReportPlayerStat value,
          $Res Function(GameReportPlayerStat) then) =
      _$GameReportPlayerStatCopyWithImpl<$Res, GameReportPlayerStat>;
  @useResult
  $Res call(
      {@JsonKey(name: 'qr') String? qr,
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
      @JsonKey(name: 'photo_approved') int? photoApproved});
}

/// @nodoc
class _$GameReportPlayerStatCopyWithImpl<$Res,
        $Val extends GameReportPlayerStat>
    implements $GameReportPlayerStatCopyWith<$Res> {
  _$GameReportPlayerStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qr = freezed,
    Object? omembId = freezed,
    Object? score = freezed,
    Object? teamId = freezed,
    Object? rank = freezed,
    Object? tagsFor = freezed,
    Object? shotsFired = freezed,
    Object? baseTags = freezed,
    Object? targetTags = freezed,
    Object? baseDestroys = freezed,
    Object? tagsAgainst = freezed,
    Object? tagsAgainstMembers = freezed,
    Object? alias = freezed,
    Object? accuracy = freezed,
    Object? avatar = freezed,
    Object? photo = freezed,
    Object? photoUse = freezed,
    Object? photoApproved = freezed,
  }) {
    return _then(_value.copyWith(
      qr: freezed == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as String?,
      omembId: freezed == omembId
          ? _value.omembId
          : omembId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsFor: freezed == tagsFor
          ? _value.tagsFor
          : tagsFor // ignore: cast_nullable_to_non_nullable
              as int?,
      shotsFired: freezed == shotsFired
          ? _value.shotsFired
          : shotsFired // ignore: cast_nullable_to_non_nullable
              as int?,
      baseTags: freezed == baseTags
          ? _value.baseTags
          : baseTags // ignore: cast_nullable_to_non_nullable
              as int?,
      targetTags: freezed == targetTags
          ? _value.targetTags
          : targetTags // ignore: cast_nullable_to_non_nullable
              as int?,
      baseDestroys: freezed == baseDestroys
          ? _value.baseDestroys
          : baseDestroys // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsAgainst: freezed == tagsAgainst
          ? _value.tagsAgainst
          : tagsAgainst // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsAgainstMembers: freezed == tagsAgainstMembers
          ? _value.tagsAgainstMembers
          : tagsAgainstMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUse: freezed == photoUse
          ? _value.photoUse
          : photoUse // ignore: cast_nullable_to_non_nullable
              as int?,
      photoApproved: freezed == photoApproved
          ? _value.photoApproved
          : photoApproved // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameReportPlayerStatImplCopyWith<$Res>
    implements $GameReportPlayerStatCopyWith<$Res> {
  factory _$$GameReportPlayerStatImplCopyWith(_$GameReportPlayerStatImpl value,
          $Res Function(_$GameReportPlayerStatImpl) then) =
      __$$GameReportPlayerStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'qr') String? qr,
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
      @JsonKey(name: 'photo_approved') int? photoApproved});
}

/// @nodoc
class __$$GameReportPlayerStatImplCopyWithImpl<$Res>
    extends _$GameReportPlayerStatCopyWithImpl<$Res, _$GameReportPlayerStatImpl>
    implements _$$GameReportPlayerStatImplCopyWith<$Res> {
  __$$GameReportPlayerStatImplCopyWithImpl(_$GameReportPlayerStatImpl _value,
      $Res Function(_$GameReportPlayerStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qr = freezed,
    Object? omembId = freezed,
    Object? score = freezed,
    Object? teamId = freezed,
    Object? rank = freezed,
    Object? tagsFor = freezed,
    Object? shotsFired = freezed,
    Object? baseTags = freezed,
    Object? targetTags = freezed,
    Object? baseDestroys = freezed,
    Object? tagsAgainst = freezed,
    Object? tagsAgainstMembers = freezed,
    Object? alias = freezed,
    Object? accuracy = freezed,
    Object? avatar = freezed,
    Object? photo = freezed,
    Object? photoUse = freezed,
    Object? photoApproved = freezed,
  }) {
    return _then(_$GameReportPlayerStatImpl(
      qr: freezed == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as String?,
      omembId: freezed == omembId
          ? _value.omembId
          : omembId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsFor: freezed == tagsFor
          ? _value.tagsFor
          : tagsFor // ignore: cast_nullable_to_non_nullable
              as int?,
      shotsFired: freezed == shotsFired
          ? _value.shotsFired
          : shotsFired // ignore: cast_nullable_to_non_nullable
              as int?,
      baseTags: freezed == baseTags
          ? _value.baseTags
          : baseTags // ignore: cast_nullable_to_non_nullable
              as int?,
      targetTags: freezed == targetTags
          ? _value.targetTags
          : targetTags // ignore: cast_nullable_to_non_nullable
              as int?,
      baseDestroys: freezed == baseDestroys
          ? _value.baseDestroys
          : baseDestroys // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsAgainst: freezed == tagsAgainst
          ? _value.tagsAgainst
          : tagsAgainst // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsAgainstMembers: freezed == tagsAgainstMembers
          ? _value.tagsAgainstMembers
          : tagsAgainstMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUse: freezed == photoUse
          ? _value.photoUse
          : photoUse // ignore: cast_nullable_to_non_nullable
              as int?,
      photoApproved: freezed == photoApproved
          ? _value.photoApproved
          : photoApproved // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameReportPlayerStatImpl
    with DiagnosticableTreeMixin
    implements _GameReportPlayerStat {
  const _$GameReportPlayerStatImpl(
      {@JsonKey(name: 'qr') this.qr,
      @JsonKey(name: 'omemb_id') this.omembId,
      @JsonKey(name: 'score') this.score,
      @JsonKey(name: 'team_id') this.teamId,
      @JsonKey(name: 'rank') this.rank,
      @JsonKey(name: 'tags_for') this.tagsFor,
      @JsonKey(name: 'shots_fired') this.shotsFired,
      @JsonKey(name: 'base_tags') this.baseTags,
      @JsonKey(name: 'target_tags') this.targetTags,
      @JsonKey(name: 'base_destroys') this.baseDestroys,
      @JsonKey(name: 'tags_against') this.tagsAgainst,
      @JsonKey(name: 'tags_against_members') this.tagsAgainstMembers,
      @JsonKey(name: 'alias') this.alias,
      @JsonKey(name: 'accuracy') this.accuracy,
      @JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'photo_use') this.photoUse,
      @JsonKey(name: 'photo_approved') this.photoApproved});

  factory _$GameReportPlayerStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameReportPlayerStatImplFromJson(json);

  @override
  @JsonKey(name: 'qr')
  final String? qr;
  @override
  @JsonKey(name: 'omemb_id')
  final int? omembId;
  @override
  @JsonKey(name: 'score')
  final int? score;
  @override
  @JsonKey(name: 'team_id')
  final int? teamId;
  @override
  @JsonKey(name: 'rank')
  final int? rank;
  @override
  @JsonKey(name: 'tags_for')
  final int? tagsFor;
  @override
  @JsonKey(name: 'shots_fired')
  final int? shotsFired;
  @override
  @JsonKey(name: 'base_tags')
  final int? baseTags;
  @override
  @JsonKey(name: 'target_tags')
  final int? targetTags;
  @override
  @JsonKey(name: 'base_destroys')
  final int? baseDestroys;
  @override
  @JsonKey(name: 'tags_against')
  final int? tagsAgainst;
  @override
  @JsonKey(name: 'tags_against_members')
  final int? tagsAgainstMembers;
  @override
  @JsonKey(name: 'alias')
  final String? alias;
  @override
  @JsonKey(name: 'accuracy')
  final double? accuracy;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;
  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'photo_use')
  final int? photoUse;
  @override
  @JsonKey(name: 'photo_approved')
  final int? photoApproved;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameReportPlayerStat(qr: $qr, omembId: $omembId, score: $score, teamId: $teamId, rank: $rank, tagsFor: $tagsFor, shotsFired: $shotsFired, baseTags: $baseTags, targetTags: $targetTags, baseDestroys: $baseDestroys, tagsAgainst: $tagsAgainst, tagsAgainstMembers: $tagsAgainstMembers, alias: $alias, accuracy: $accuracy, avatar: $avatar, photo: $photo, photoUse: $photoUse, photoApproved: $photoApproved)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameReportPlayerStat'))
      ..add(DiagnosticsProperty('qr', qr))
      ..add(DiagnosticsProperty('omembId', omembId))
      ..add(DiagnosticsProperty('score', score))
      ..add(DiagnosticsProperty('teamId', teamId))
      ..add(DiagnosticsProperty('rank', rank))
      ..add(DiagnosticsProperty('tagsFor', tagsFor))
      ..add(DiagnosticsProperty('shotsFired', shotsFired))
      ..add(DiagnosticsProperty('baseTags', baseTags))
      ..add(DiagnosticsProperty('targetTags', targetTags))
      ..add(DiagnosticsProperty('baseDestroys', baseDestroys))
      ..add(DiagnosticsProperty('tagsAgainst', tagsAgainst))
      ..add(DiagnosticsProperty('tagsAgainstMembers', tagsAgainstMembers))
      ..add(DiagnosticsProperty('alias', alias))
      ..add(DiagnosticsProperty('accuracy', accuracy))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('photoUse', photoUse))
      ..add(DiagnosticsProperty('photoApproved', photoApproved));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameReportPlayerStatImpl &&
            (identical(other.qr, qr) || other.qr == qr) &&
            (identical(other.omembId, omembId) || other.omembId == omembId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.tagsFor, tagsFor) || other.tagsFor == tagsFor) &&
            (identical(other.shotsFired, shotsFired) ||
                other.shotsFired == shotsFired) &&
            (identical(other.baseTags, baseTags) ||
                other.baseTags == baseTags) &&
            (identical(other.targetTags, targetTags) ||
                other.targetTags == targetTags) &&
            (identical(other.baseDestroys, baseDestroys) ||
                other.baseDestroys == baseDestroys) &&
            (identical(other.tagsAgainst, tagsAgainst) ||
                other.tagsAgainst == tagsAgainst) &&
            (identical(other.tagsAgainstMembers, tagsAgainstMembers) ||
                other.tagsAgainstMembers == tagsAgainstMembers) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.photoUse, photoUse) ||
                other.photoUse == photoUse) &&
            (identical(other.photoApproved, photoApproved) ||
                other.photoApproved == photoApproved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      qr,
      omembId,
      score,
      teamId,
      rank,
      tagsFor,
      shotsFired,
      baseTags,
      targetTags,
      baseDestroys,
      tagsAgainst,
      tagsAgainstMembers,
      alias,
      accuracy,
      avatar,
      photo,
      photoUse,
      photoApproved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameReportPlayerStatImplCopyWith<_$GameReportPlayerStatImpl>
      get copyWith =>
          __$$GameReportPlayerStatImplCopyWithImpl<_$GameReportPlayerStatImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameReportPlayerStatImplToJson(
      this,
    );
  }
}

abstract class _GameReportPlayerStat implements GameReportPlayerStat {
  const factory _GameReportPlayerStat(
          {@JsonKey(name: 'qr') final String? qr,
          @JsonKey(name: 'omemb_id') final int? omembId,
          @JsonKey(name: 'score') final int? score,
          @JsonKey(name: 'team_id') final int? teamId,
          @JsonKey(name: 'rank') final int? rank,
          @JsonKey(name: 'tags_for') final int? tagsFor,
          @JsonKey(name: 'shots_fired') final int? shotsFired,
          @JsonKey(name: 'base_tags') final int? baseTags,
          @JsonKey(name: 'target_tags') final int? targetTags,
          @JsonKey(name: 'base_destroys') final int? baseDestroys,
          @JsonKey(name: 'tags_against') final int? tagsAgainst,
          @JsonKey(name: 'tags_against_members') final int? tagsAgainstMembers,
          @JsonKey(name: 'alias') final String? alias,
          @JsonKey(name: 'accuracy') final double? accuracy,
          @JsonKey(name: 'avatar') final String? avatar,
          @JsonKey(name: 'photo') final String? photo,
          @JsonKey(name: 'photo_use') final int? photoUse,
          @JsonKey(name: 'photo_approved') final int? photoApproved}) =
      _$GameReportPlayerStatImpl;

  factory _GameReportPlayerStat.fromJson(Map<String, dynamic> json) =
      _$GameReportPlayerStatImpl.fromJson;

  @override
  @JsonKey(name: 'qr')
  String? get qr;
  @override
  @JsonKey(name: 'omemb_id')
  int? get omembId;
  @override
  @JsonKey(name: 'score')
  int? get score;
  @override
  @JsonKey(name: 'team_id')
  int? get teamId;
  @override
  @JsonKey(name: 'rank')
  int? get rank;
  @override
  @JsonKey(name: 'tags_for')
  int? get tagsFor;
  @override
  @JsonKey(name: 'shots_fired')
  int? get shotsFired;
  @override
  @JsonKey(name: 'base_tags')
  int? get baseTags;
  @override
  @JsonKey(name: 'target_tags')
  int? get targetTags;
  @override
  @JsonKey(name: 'base_destroys')
  int? get baseDestroys;
  @override
  @JsonKey(name: 'tags_against')
  int? get tagsAgainst;
  @override
  @JsonKey(name: 'tags_against_members')
  int? get tagsAgainstMembers;
  @override
  @JsonKey(name: 'alias')
  String? get alias;
  @override
  @JsonKey(name: 'accuracy')
  double? get accuracy;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  @JsonKey(name: 'photo_use')
  int? get photoUse;
  @override
  @JsonKey(name: 'photo_approved')
  int? get photoApproved;
  @override
  @JsonKey(ignore: true)
  _$$GameReportPlayerStatImplCopyWith<_$GameReportPlayerStatImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LevelDescription _$LevelDescriptionFromJson(Map<String, dynamic> json) {
  return _LevelDescription.fromJson(json);
}

/// @nodoc
mixin _$LevelDescription {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  int? get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_name')
  String? get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_colour')
  String? get classColour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelDescriptionCopyWith<LevelDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelDescriptionCopyWith<$Res> {
  factory $LevelDescriptionCopyWith(
          LevelDescription value, $Res Function(LevelDescription) then) =
      _$LevelDescriptionCopyWithImpl<$Res, LevelDescription>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'level') int? level,
      @JsonKey(name: 'class_name') String? className,
      @JsonKey(name: 'class_colour') String? classColour});
}

/// @nodoc
class _$LevelDescriptionCopyWithImpl<$Res, $Val extends LevelDescription>
    implements $LevelDescriptionCopyWith<$Res> {
  _$LevelDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
    Object? className = freezed,
    Object? classColour = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      classColour: freezed == classColour
          ? _value.classColour
          : classColour // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LevelDescriptionImplCopyWith<$Res>
    implements $LevelDescriptionCopyWith<$Res> {
  factory _$$LevelDescriptionImplCopyWith(_$LevelDescriptionImpl value,
          $Res Function(_$LevelDescriptionImpl) then) =
      __$$LevelDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'level') int? level,
      @JsonKey(name: 'class_name') String? className,
      @JsonKey(name: 'class_colour') String? classColour});
}

/// @nodoc
class __$$LevelDescriptionImplCopyWithImpl<$Res>
    extends _$LevelDescriptionCopyWithImpl<$Res, _$LevelDescriptionImpl>
    implements _$$LevelDescriptionImplCopyWith<$Res> {
  __$$LevelDescriptionImplCopyWithImpl(_$LevelDescriptionImpl _value,
      $Res Function(_$LevelDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
    Object? className = freezed,
    Object? classColour = freezed,
  }) {
    return _then(_$LevelDescriptionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      classColour: freezed == classColour
          ? _value.classColour
          : classColour // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LevelDescriptionImpl
    with DiagnosticableTreeMixin
    implements _LevelDescription {
  const _$LevelDescriptionImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'level') this.level,
      @JsonKey(name: 'class_name') this.className,
      @JsonKey(name: 'class_colour') this.classColour});

  factory _$LevelDescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelDescriptionImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'level')
  final int? level;
  @override
  @JsonKey(name: 'class_name')
  final String? className;
  @override
  @JsonKey(name: 'class_colour')
  final String? classColour;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LevelDescription(id: $id, name: $name, level: $level, className: $className, classColour: $classColour)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LevelDescription'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('className', className))
      ..add(DiagnosticsProperty('classColour', classColour));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelDescriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.classColour, classColour) ||
                other.classColour == classColour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, level, className, classColour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelDescriptionImplCopyWith<_$LevelDescriptionImpl> get copyWith =>
      __$$LevelDescriptionImplCopyWithImpl<_$LevelDescriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelDescriptionImplToJson(
      this,
    );
  }
}

abstract class _LevelDescription implements LevelDescription {
  const factory _LevelDescription(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'level') final int? level,
          @JsonKey(name: 'class_name') final String? className,
          @JsonKey(name: 'class_colour') final String? classColour}) =
      _$LevelDescriptionImpl;

  factory _LevelDescription.fromJson(Map<String, dynamic> json) =
      _$LevelDescriptionImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'level')
  int? get level;
  @override
  @JsonKey(name: 'class_name')
  String? get className;
  @override
  @JsonKey(name: 'class_colour')
  String? get classColour;
  @override
  @JsonKey(ignore: true)
  _$$LevelDescriptionImplCopyWith<_$LevelDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
