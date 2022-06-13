// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoResponseModel _$VideoResponseModelFromJson(Map<String, dynamic> json) {
  return _VideoResponseModel.fromJson(json);
}

/// @nodoc
mixin _$VideoResponseModel {
  int get id => throw _privateConstructorUsedError;
  List<VideoModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResponseModelCopyWith<VideoResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseModelCopyWith<$Res> {
  factory $VideoResponseModelCopyWith(
          VideoResponseModel value, $Res Function(VideoResponseModel) then) =
      _$VideoResponseModelCopyWithImpl<$Res>;
  $Res call({int id, List<VideoModel> results});
}

/// @nodoc
class _$VideoResponseModelCopyWithImpl<$Res>
    implements $VideoResponseModelCopyWith<$Res> {
  _$VideoResponseModelCopyWithImpl(this._value, this._then);

  final VideoResponseModel _value;
  // ignore: unused_field
  final $Res Function(VideoResponseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_VideoResponseModelCopyWith<$Res>
    implements $VideoResponseModelCopyWith<$Res> {
  factory _$$_VideoResponseModelCopyWith(_$_VideoResponseModel value,
          $Res Function(_$_VideoResponseModel) then) =
      __$$_VideoResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, List<VideoModel> results});
}

/// @nodoc
class __$$_VideoResponseModelCopyWithImpl<$Res>
    extends _$VideoResponseModelCopyWithImpl<$Res>
    implements _$$_VideoResponseModelCopyWith<$Res> {
  __$$_VideoResponseModelCopyWithImpl(
      _$_VideoResponseModel _value, $Res Function(_$_VideoResponseModel) _then)
      : super(_value, (v) => _then(v as _$_VideoResponseModel));

  @override
  _$_VideoResponseModel get _value => super._value as _$_VideoResponseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_VideoResponseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoResponseModel implements _VideoResponseModel {
  _$_VideoResponseModel(
      {required this.id, required final List<VideoModel> results})
      : _results = results;

  factory _$_VideoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_VideoResponseModelFromJson(json);

  @override
  final int id;
  final List<VideoModel> _results;
  @override
  List<VideoModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'VideoResponseModel(id: $id, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoResponseModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_VideoResponseModelCopyWith<_$_VideoResponseModel> get copyWith =>
      __$$_VideoResponseModelCopyWithImpl<_$_VideoResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoResponseModelToJson(this);
  }
}

abstract class _VideoResponseModel implements VideoResponseModel {
  factory _VideoResponseModel(
      {required final int id,
      required final List<VideoModel> results}) = _$_VideoResponseModel;

  factory _VideoResponseModel.fromJson(Map<String, dynamic> json) =
      _$_VideoResponseModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  List<VideoModel> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VideoResponseModelCopyWith<_$_VideoResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
