// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tips.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tips _$TipsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return TipsObj.fromJson(json);
    case 'data':
      return TipsData.fromJson(json);
    case 'list':
      return TipsList.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$TipsTearOff {
  const _$TipsTearOff();

  TipsObj call(TipsData data) {
    return TipsObj(
      data,
    );
  }

  TipsData data(@JsonKey(name: "url") String imageurl, String text) {
    return TipsData(
      imageurl,
      text,
    );
  }

  TipsList list({List<TipsObj>? users}) {
    return TipsList(
      users: users,
    );
  }

  Tips fromJson(Map<String, Object> json) {
    return Tips.fromJson(json);
  }
}

/// @nodoc
const $Tips = _$TipsTearOff();

/// @nodoc
mixin _$Tips {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TipsData data) $default, {
    required TResult Function(
            @JsonKey(name: "url") String imageurl, String text)
        data,
    required TResult Function(List<TipsObj>? users) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TipsData data)? $default, {
    TResult Function(@JsonKey(name: "url") String imageurl, String text)? data,
    TResult Function(List<TipsObj>? users)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TipsObj value) $default, {
    required TResult Function(TipsData value) data,
    required TResult Function(TipsList value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TipsObj value)? $default, {
    TResult Function(TipsData value)? data,
    TResult Function(TipsList value)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsCopyWith<$Res> {
  factory $TipsCopyWith(Tips value, $Res Function(Tips) then) =
      _$TipsCopyWithImpl<$Res>;
}

/// @nodoc
class _$TipsCopyWithImpl<$Res> implements $TipsCopyWith<$Res> {
  _$TipsCopyWithImpl(this._value, this._then);

  final Tips _value;
  // ignore: unused_field
  final $Res Function(Tips) _then;
}

/// @nodoc
abstract class $TipsObjCopyWith<$Res> {
  factory $TipsObjCopyWith(TipsObj value, $Res Function(TipsObj) then) =
      _$TipsObjCopyWithImpl<$Res>;
  $Res call({TipsData data});
}

/// @nodoc
class _$TipsObjCopyWithImpl<$Res> extends _$TipsCopyWithImpl<$Res>
    implements $TipsObjCopyWith<$Res> {
  _$TipsObjCopyWithImpl(TipsObj _value, $Res Function(TipsObj) _then)
      : super(_value, (v) => _then(v as TipsObj));

  @override
  TipsObj get _value => super._value as TipsObj;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(TipsObj(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TipsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TipsObj implements TipsObj {
  const _$TipsObj(this.data);

  factory _$TipsObj.fromJson(Map<String, dynamic> json) =>
      _$_$TipsObjFromJson(json);

  @override
  final TipsData data;

  @override
  String toString() {
    return 'Tips(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TipsObj &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $TipsObjCopyWith<TipsObj> get copyWith =>
      _$TipsObjCopyWithImpl<TipsObj>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TipsData data) $default, {
    required TResult Function(
            @JsonKey(name: "url") String imageurl, String text)
        data,
    required TResult Function(List<TipsObj>? users) list,
  }) {
    return $default(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TipsData data)? $default, {
    TResult Function(@JsonKey(name: "url") String imageurl, String text)? data,
    TResult Function(List<TipsObj>? users)? list,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TipsObj value) $default, {
    required TResult Function(TipsData value) data,
    required TResult Function(TipsList value) list,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TipsObj value)? $default, {
    TResult Function(TipsData value)? data,
    TResult Function(TipsList value)? list,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TipsObjToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class TipsObj implements Tips {
  const factory TipsObj(TipsData data) = _$TipsObj;

  factory TipsObj.fromJson(Map<String, dynamic> json) = _$TipsObj.fromJson;

  TipsData get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipsObjCopyWith<TipsObj> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsDataCopyWith<$Res> {
  factory $TipsDataCopyWith(TipsData value, $Res Function(TipsData) then) =
      _$TipsDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "url") String imageurl, String text});
}

/// @nodoc
class _$TipsDataCopyWithImpl<$Res> extends _$TipsCopyWithImpl<$Res>
    implements $TipsDataCopyWith<$Res> {
  _$TipsDataCopyWithImpl(TipsData _value, $Res Function(TipsData) _then)
      : super(_value, (v) => _then(v as TipsData));

  @override
  TipsData get _value => super._value as TipsData;

  @override
  $Res call({
    Object? imageurl = freezed,
    Object? text = freezed,
  }) {
    return _then(TipsData(
      imageurl == freezed
          ? _value.imageurl
          : imageurl // ignore: cast_nullable_to_non_nullable
              as String,
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TipsData implements TipsData {
  const _$TipsData(@JsonKey(name: "url") this.imageurl, this.text);

  factory _$TipsData.fromJson(Map<String, dynamic> json) =>
      _$_$TipsDataFromJson(json);

  @override
  @JsonKey(name: "url")
  final String imageurl;
  @override
  final String text;

  @override
  String toString() {
    return 'Tips.data(imageurl: $imageurl, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TipsData &&
            (identical(other.imageurl, imageurl) ||
                const DeepCollectionEquality()
                    .equals(other.imageurl, imageurl)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageurl) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $TipsDataCopyWith<TipsData> get copyWith =>
      _$TipsDataCopyWithImpl<TipsData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TipsData data) $default, {
    required TResult Function(
            @JsonKey(name: "url") String imageurl, String text)
        data,
    required TResult Function(List<TipsObj>? users) list,
  }) {
    return data(imageurl, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TipsData data)? $default, {
    TResult Function(@JsonKey(name: "url") String imageurl, String text)? data,
    TResult Function(List<TipsObj>? users)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(imageurl, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TipsObj value) $default, {
    required TResult Function(TipsData value) data,
    required TResult Function(TipsList value) list,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TipsObj value)? $default, {
    TResult Function(TipsData value)? data,
    TResult Function(TipsList value)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TipsDataToJson(this)..['runtimeType'] = 'data';
  }
}

abstract class TipsData implements Tips {
  const factory TipsData(@JsonKey(name: "url") String imageurl, String text) =
      _$TipsData;

  factory TipsData.fromJson(Map<String, dynamic> json) = _$TipsData.fromJson;

  @JsonKey(name: "url")
  String get imageurl => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipsDataCopyWith<TipsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsListCopyWith<$Res> {
  factory $TipsListCopyWith(TipsList value, $Res Function(TipsList) then) =
      _$TipsListCopyWithImpl<$Res>;
  $Res call({List<TipsObj>? users});
}

/// @nodoc
class _$TipsListCopyWithImpl<$Res> extends _$TipsCopyWithImpl<$Res>
    implements $TipsListCopyWith<$Res> {
  _$TipsListCopyWithImpl(TipsList _value, $Res Function(TipsList) _then)
      : super(_value, (v) => _then(v as TipsList));

  @override
  TipsList get _value => super._value as TipsList;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(TipsList(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<TipsObj>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TipsList implements TipsList {
  const _$TipsList({this.users});

  factory _$TipsList.fromJson(Map<String, dynamic> json) =>
      _$_$TipsListFromJson(json);

  @override
  final List<TipsObj>? users;

  @override
  String toString() {
    return 'Tips.list(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TipsList &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  $TipsListCopyWith<TipsList> get copyWith =>
      _$TipsListCopyWithImpl<TipsList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TipsData data) $default, {
    required TResult Function(
            @JsonKey(name: "url") String imageurl, String text)
        data,
    required TResult Function(List<TipsObj>? users) list,
  }) {
    return list(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TipsData data)? $default, {
    TResult Function(@JsonKey(name: "url") String imageurl, String text)? data,
    TResult Function(List<TipsObj>? users)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TipsObj value) $default, {
    required TResult Function(TipsData value) data,
    required TResult Function(TipsList value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TipsObj value)? $default, {
    TResult Function(TipsData value)? data,
    TResult Function(TipsList value)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TipsListToJson(this)..['runtimeType'] = 'list';
  }
}

abstract class TipsList implements Tips {
  const factory TipsList({List<TipsObj>? users}) = _$TipsList;

  factory TipsList.fromJson(Map<String, dynamic> json) = _$TipsList.fromJson;

  List<TipsObj>? get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipsListCopyWith<TipsList> get copyWith =>
      throw _privateConstructorUsedError;
}
