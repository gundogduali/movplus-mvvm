// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CastModel _$CastModelFromJson(Map<String, dynamic> json) {
  return _CastModel.fromJson(json);
}

/// @nodoc
mixin _$CastModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get character => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastModelCopyWith<CastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastModelCopyWith<$Res> {
  factory $CastModelCopyWith(CastModel value, $Res Function(CastModel) then) =
      _$CastModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String character,
      @JsonKey(name: 'profile_path') String? profilePath});
}

/// @nodoc
class _$CastModelCopyWithImpl<$Res> implements $CastModelCopyWith<$Res> {
  _$CastModelCopyWithImpl(this._value, this._then);

  final CastModel _value;
  // ignore: unused_field
  final $Res Function(CastModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? character = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CastModelCopyWith<$Res> implements $CastModelCopyWith<$Res> {
  factory _$$_CastModelCopyWith(
          _$_CastModel value, $Res Function(_$_CastModel) then) =
      __$$_CastModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String character,
      @JsonKey(name: 'profile_path') String? profilePath});
}

/// @nodoc
class __$$_CastModelCopyWithImpl<$Res> extends _$CastModelCopyWithImpl<$Res>
    implements _$$_CastModelCopyWith<$Res> {
  __$$_CastModelCopyWithImpl(
      _$_CastModel _value, $Res Function(_$_CastModel) _then)
      : super(_value, (v) => _then(v as _$_CastModel));

  @override
  _$_CastModel get _value => super._value as _$_CastModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? character = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$_CastModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CastModel implements _CastModel {
  _$_CastModel(
      {required this.id,
      required this.name,
      required this.character,
      @JsonKey(name: 'profile_path') required this.profilePath});

  factory _$_CastModel.fromJson(Map<String, dynamic> json) =>
      _$$_CastModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String character;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  @override
  String toString() {
    return 'CastModel(id: $id, name: $name, character: $character, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CastModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.character, character) &&
            const DeepCollectionEquality()
                .equals(other.profilePath, profilePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(character),
      const DeepCollectionEquality().hash(profilePath));

  @JsonKey(ignore: true)
  @override
  _$$_CastModelCopyWith<_$_CastModel> get copyWith =>
      __$$_CastModelCopyWithImpl<_$_CastModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastModelToJson(this);
  }
}

abstract class _CastModel implements CastModel {
  factory _CastModel(
          {required final int id,
          required final String name,
          required final String character,
          @JsonKey(name: 'profile_path') required final String? profilePath}) =
      _$_CastModel;

  factory _CastModel.fromJson(Map<String, dynamic> json) =
      _$_CastModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get character => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CastModelCopyWith<_$_CastModel> get copyWith =>
      throw _privateConstructorUsedError;
}
