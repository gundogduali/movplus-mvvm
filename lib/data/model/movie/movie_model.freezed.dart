// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  bool get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'poster_path',
      defaultValue:
          'https://www.dentanice.com.tr/wp-content/uploads/2016/10/orionthemes-placeholder-image.png')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  bool? get adult => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'vote_count')
          int? voteCount,
      int id,
      bool video,
      @JsonKey(name: 'vote_average')
          double? voteAverage,
      String title,
      double? popularity,
      @JsonKey(
          name: 'poster_path',
          defaultValue:
              'https://www.dentanice.com.tr/wp-content/uploads/2016/10/orionthemes-placeholder-image.png')
          String? posterPath,
      @JsonKey(name: 'original_language')
          String? originalLanguage,
      @JsonKey(name: 'original_title')
          String? originalTitle,
      @JsonKey(name: 'genre_ids')
          List<int>? genreIds,
      @JsonKey(name: 'backdrop_path')
          String? backdropPath,
      bool? adult,
      String? overview,
      @JsonKey(name: 'release_date')
          String? releaseDate});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res> implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  final MovieModel _value;
  // ignore: unused_field
  final $Res Function(MovieModel) _then;

  @override
  $Res call({
    Object? voteCount = freezed,
    Object? id = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? title = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? genreIds = freezed,
    Object? backdropPath = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieModelCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$_MovieModelCopyWith(
          _$_MovieModel value, $Res Function(_$_MovieModel) then) =
      __$$_MovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'vote_count')
          int? voteCount,
      int id,
      bool video,
      @JsonKey(name: 'vote_average')
          double? voteAverage,
      String title,
      double? popularity,
      @JsonKey(
          name: 'poster_path',
          defaultValue:
              'https://www.dentanice.com.tr/wp-content/uploads/2016/10/orionthemes-placeholder-image.png')
          String? posterPath,
      @JsonKey(name: 'original_language')
          String? originalLanguage,
      @JsonKey(name: 'original_title')
          String? originalTitle,
      @JsonKey(name: 'genre_ids')
          List<int>? genreIds,
      @JsonKey(name: 'backdrop_path')
          String? backdropPath,
      bool? adult,
      String? overview,
      @JsonKey(name: 'release_date')
          String? releaseDate});
}

/// @nodoc
class __$$_MovieModelCopyWithImpl<$Res> extends _$MovieModelCopyWithImpl<$Res>
    implements _$$_MovieModelCopyWith<$Res> {
  __$$_MovieModelCopyWithImpl(
      _$_MovieModel _value, $Res Function(_$_MovieModel) _then)
      : super(_value, (v) => _then(v as _$_MovieModel));

  @override
  _$_MovieModel get _value => super._value as _$_MovieModel;

  @override
  $Res call({
    Object? voteCount = freezed,
    Object? id = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? title = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? genreIds = freezed,
    Object? backdropPath = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$_MovieModel(
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: genreIds == freezed
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieModel implements _MovieModel {
  _$_MovieModel(
      {@JsonKey(name: 'vote_count')
          this.voteCount,
      required this.id,
      this.video = false,
      @JsonKey(name: 'vote_average')
          this.voteAverage,
      required this.title,
      this.popularity,
      @JsonKey(
          name: 'poster_path',
          defaultValue:
              'https://www.dentanice.com.tr/wp-content/uploads/2016/10/orionthemes-placeholder-image.png')
          this.posterPath,
      @JsonKey(name: 'original_language')
          this.originalLanguage,
      @JsonKey(name: 'original_title')
          this.originalTitle,
      @JsonKey(name: 'genre_ids')
          final List<int>? genreIds,
      @JsonKey(name: 'backdrop_path')
          this.backdropPath,
      this.adult,
      this.overview,
      @JsonKey(name: 'release_date')
          this.releaseDate})
      : _genreIds = genreIds;

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelFromJson(json);

  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @override
  final int id;
  @override
  @JsonKey()
  final bool video;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  final String title;
  @override
  final double? popularity;
  @override
  @JsonKey(
      name: 'poster_path',
      defaultValue:
          'https://www.dentanice.com.tr/wp-content/uploads/2016/10/orionthemes-placeholder-image.png')
  final String? posterPath;
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final List<int>? _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  final bool? adult;
  @override
  final String? overview;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;

  @override
  String toString() {
    return 'MovieModel(voteCount: $voteCount, id: $id, video: $video, voteAverage: $voteAverage, title: $title, popularity: $popularity, posterPath: $posterPath, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genreIds: $genreIds, backdropPath: $backdropPath, adult: $adult, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieModel &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.originalLanguage, originalLanguage) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(voteCount),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(video),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(originalLanguage),
      const DeepCollectionEquality().hash(originalTitle),
      const DeepCollectionEquality().hash(_genreIds),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(releaseDate));

  @JsonKey(ignore: true)
  @override
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      __$$_MovieModelCopyWithImpl<_$_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelToJson(this);
  }
}

abstract class _MovieModel implements MovieModel {
  factory _MovieModel(
      {@JsonKey(name: 'vote_count')
          final int? voteCount,
      required final int id,
      final bool video,
      @JsonKey(name: 'vote_average')
          final double? voteAverage,
      required final String title,
      final double? popularity,
      @JsonKey(
          name: 'poster_path',
          defaultValue:
              'https://www.dentanice.com.tr/wp-content/uploads/2016/10/orionthemes-placeholder-image.png')
          final String? posterPath,
      @JsonKey(name: 'original_language')
          final String? originalLanguage,
      @JsonKey(name: 'original_title')
          final String? originalTitle,
      @JsonKey(name: 'genre_ids')
          final List<int>? genreIds,
      @JsonKey(name: 'backdrop_path')
          final String? backdropPath,
      final bool? adult,
      final String? overview,
      @JsonKey(name: 'release_date')
          final String? releaseDate}) = _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  bool get video => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  double? get popularity => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'poster_path',
      defaultValue:
          'https://www.dentanice.com.tr/wp-content/uploads/2016/10/orionthemes-placeholder-image.png')
  String? get posterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @override
  bool? get adult => throw _privateConstructorUsedError;
  @override
  String? get overview => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
