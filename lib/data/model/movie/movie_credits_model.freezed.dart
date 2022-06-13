// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_credits_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieCreditsModel _$MovieCreditsModelFromJson(Map<String, dynamic> json) {
  return _MovieCreditsModel.fromJson(json);
}

/// @nodoc
mixin _$MovieCreditsModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'cast')
  List<CastModel> get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCreditsModelCopyWith<MovieCreditsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreditsModelCopyWith<$Res> {
  factory $MovieCreditsModelCopyWith(
          MovieCreditsModel value, $Res Function(MovieCreditsModel) then) =
      _$MovieCreditsModelCopyWithImpl<$Res>;
  $Res call({int id, @JsonKey(name: 'cast') List<CastModel> cast});
}

/// @nodoc
class _$MovieCreditsModelCopyWithImpl<$Res>
    implements $MovieCreditsModelCopyWith<$Res> {
  _$MovieCreditsModelCopyWithImpl(this._value, this._then);

  final MovieCreditsModel _value;
  // ignore: unused_field
  final $Res Function(MovieCreditsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieCreditsModelCopyWith<$Res>
    implements $MovieCreditsModelCopyWith<$Res> {
  factory _$$_MovieCreditsModelCopyWith(_$_MovieCreditsModel value,
          $Res Function(_$_MovieCreditsModel) then) =
      __$$_MovieCreditsModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, @JsonKey(name: 'cast') List<CastModel> cast});
}

/// @nodoc
class __$$_MovieCreditsModelCopyWithImpl<$Res>
    extends _$MovieCreditsModelCopyWithImpl<$Res>
    implements _$$_MovieCreditsModelCopyWith<$Res> {
  __$$_MovieCreditsModelCopyWithImpl(
      _$_MovieCreditsModel _value, $Res Function(_$_MovieCreditsModel) _then)
      : super(_value, (v) => _then(v as _$_MovieCreditsModel));

  @override
  _$_MovieCreditsModel get _value => super._value as _$_MovieCreditsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_$_MovieCreditsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: cast == freezed
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieCreditsModel implements _MovieCreditsModel {
  _$_MovieCreditsModel(
      {required this.id,
      @JsonKey(name: 'cast') required final List<CastModel> cast})
      : _cast = cast;

  factory _$_MovieCreditsModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieCreditsModelFromJson(json);

  @override
  final int id;
  final List<CastModel> _cast;
  @override
  @JsonKey(name: 'cast')
  List<CastModel> get cast {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  @override
  String toString() {
    return 'MovieCreditsModel(id: $id, cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieCreditsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._cast, _cast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_cast));

  @JsonKey(ignore: true)
  @override
  _$$_MovieCreditsModelCopyWith<_$_MovieCreditsModel> get copyWith =>
      __$$_MovieCreditsModelCopyWithImpl<_$_MovieCreditsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieCreditsModelToJson(this);
  }
}

abstract class _MovieCreditsModel implements MovieCreditsModel {
  factory _MovieCreditsModel(
          {required final int id,
          @JsonKey(name: 'cast') required final List<CastModel> cast}) =
      _$_MovieCreditsModel;

  factory _MovieCreditsModel.fromJson(Map<String, dynamic> json) =
      _$_MovieCreditsModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cast')
  List<CastModel> get cast => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieCreditsModelCopyWith<_$_MovieCreditsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
