// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviesResponseModel _$MoviesResponseModelFromJson(Map<String, dynamic> json) {
  return _MoviesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MoviesResponseModel {
  int get page => throw _privateConstructorUsedError;
  List<MovieModel> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesResponseModelCopyWith<MoviesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResponseModelCopyWith<$Res> {
  factory $MoviesResponseModelCopyWith(
          MoviesResponseModel value, $Res Function(MoviesResponseModel) then) =
      _$MoviesResponseModelCopyWithImpl<$Res>;
  $Res call(
      {int page,
      List<MovieModel> results,
      @JsonKey(name: 'total_results') int totalResults,
      @JsonKey(name: 'total_pages') int totalPages});
}

/// @nodoc
class _$MoviesResponseModelCopyWithImpl<$Res>
    implements $MoviesResponseModelCopyWith<$Res> {
  _$MoviesResponseModelCopyWithImpl(this._value, this._then);

  final MoviesResponseModel _value;
  // ignore: unused_field
  final $Res Function(MoviesResponseModel) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MoviesResponseModelCopyWith<$Res>
    implements $MoviesResponseModelCopyWith<$Res> {
  factory _$$_MoviesResponseModelCopyWith(_$_MoviesResponseModel value,
          $Res Function(_$_MoviesResponseModel) then) =
      __$$_MoviesResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      List<MovieModel> results,
      @JsonKey(name: 'total_results') int totalResults,
      @JsonKey(name: 'total_pages') int totalPages});
}

/// @nodoc
class __$$_MoviesResponseModelCopyWithImpl<$Res>
    extends _$MoviesResponseModelCopyWithImpl<$Res>
    implements _$$_MoviesResponseModelCopyWith<$Res> {
  __$$_MoviesResponseModelCopyWithImpl(_$_MoviesResponseModel _value,
      $Res Function(_$_MoviesResponseModel) _then)
      : super(_value, (v) => _then(v as _$_MoviesResponseModel));

  @override
  _$_MoviesResponseModel get _value => super._value as _$_MoviesResponseModel;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_$_MoviesResponseModel(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoviesResponseModel implements _MoviesResponseModel {
  _$_MoviesResponseModel(
      {required this.page,
      required final List<MovieModel> results,
      @JsonKey(name: 'total_results') required this.totalResults,
      @JsonKey(name: 'total_pages') required this.totalPages})
      : _results = results;

  factory _$_MoviesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MoviesResponseModelFromJson(json);

  @override
  final int page;
  final List<MovieModel> _results;
  @override
  List<MovieModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_results')
  final int totalResults;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;

  @override
  String toString() {
    return 'MoviesResponseModel(page: $page, results: $results, totalResults: $totalResults, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoviesResponseModel &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(totalResults),
      const DeepCollectionEquality().hash(totalPages));

  @JsonKey(ignore: true)
  @override
  _$$_MoviesResponseModelCopyWith<_$_MoviesResponseModel> get copyWith =>
      __$$_MoviesResponseModelCopyWithImpl<_$_MoviesResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviesResponseModelToJson(this);
  }
}

abstract class _MoviesResponseModel implements MoviesResponseModel {
  factory _MoviesResponseModel(
          {required final int page,
          required final List<MovieModel> results,
          @JsonKey(name: 'total_results') required final int totalResults,
          @JsonKey(name: 'total_pages') required final int totalPages}) =
      _$_MoviesResponseModel;

  factory _MoviesResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MoviesResponseModel.fromJson;

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  List<MovieModel> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MoviesResponseModelCopyWith<_$_MoviesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
