// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoviesModel _$MoviesModelFromJson(Map<String, dynamic> json) {
  return _MoviesModel.fromJson(json);
}

/// @nodoc
mixin _$MoviesModel {
  String get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShow => throw _privateConstructorUsedError;

  /// Serializes this MoviesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoviesModelCopyWith<MoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesModelCopyWith<$Res> {
  factory $MoviesModelCopyWith(
          MoviesModel value, $Res Function(MoviesModel) then) =
      _$MoviesModelCopyWithImpl<$Res, MoviesModel>;
  @useResult
  $Res call(
      {String total,
      int page,
      int pages,
      @JsonKey(name: 'tv_shows') List<TvShows> tvShow});
}

/// @nodoc
class _$MoviesModelCopyWithImpl<$Res, $Val extends MoviesModel>
    implements $MoviesModelCopyWith<$Res> {
  _$MoviesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShow = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShow: null == tvShow
          ? _value.tvShow
          : tvShow // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesModelImplCopyWith<$Res>
    implements $MoviesModelCopyWith<$Res> {
  factory _$$MoviesModelImplCopyWith(
          _$MoviesModelImpl value, $Res Function(_$MoviesModelImpl) then) =
      __$$MoviesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String total,
      int page,
      int pages,
      @JsonKey(name: 'tv_shows') List<TvShows> tvShow});
}

/// @nodoc
class __$$MoviesModelImplCopyWithImpl<$Res>
    extends _$MoviesModelCopyWithImpl<$Res, _$MoviesModelImpl>
    implements _$$MoviesModelImplCopyWith<$Res> {
  __$$MoviesModelImplCopyWithImpl(
      _$MoviesModelImpl _value, $Res Function(_$MoviesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShow = null,
  }) {
    return _then(_$MoviesModelImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShow: null == tvShow
          ? _value._tvShow
          : tvShow // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesModelImpl implements _MoviesModel {
  _$MoviesModelImpl(
      {this.total = '',
      this.page = 0,
      this.pages = 1,
      @JsonKey(name: 'tv_shows') final List<TvShows> tvShow = const []})
      : _tvShow = tvShow;

  factory _$MoviesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesModelImplFromJson(json);

  @override
  @JsonKey()
  final String total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pages;
  final List<TvShows> _tvShow;
  @override
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShow {
    if (_tvShow is EqualUnmodifiableListView) return _tvShow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShow);
  }

  @override
  String toString() {
    return 'MoviesModel(total: $total, page: $page, pages: $pages, tvShow: $tvShow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._tvShow, _tvShow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages,
      const DeepCollectionEquality().hash(_tvShow));

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesModelImplCopyWith<_$MoviesModelImpl> get copyWith =>
      __$$MoviesModelImplCopyWithImpl<_$MoviesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesModelImplToJson(
      this,
    );
  }
}

abstract class _MoviesModel implements MoviesModel {
  factory _MoviesModel(
          {final String total,
          final int page,
          final int pages,
          @JsonKey(name: 'tv_shows') final List<TvShows> tvShow}) =
      _$MoviesModelImpl;

  factory _MoviesModel.fromJson(Map<String, dynamic> json) =
      _$MoviesModelImpl.fromJson;

  @override
  String get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShow;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoviesModelImplCopyWith<_$MoviesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TvShows _$TvShowsFromJson(Map<String, dynamic> json) {
  return _TvShows.fromJson(json);
}

/// @nodoc
mixin _$TvShows {
  @JsonKey(name: 'name')
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'permalink')
  String get permalink => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'network')
  String get network => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_thumbnail_path')
  String get imageThumbnailPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  /// Serializes this TvShows to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TvShowsCopyWith<TvShows> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowsCopyWith<$Res> {
  factory $TvShowsCopyWith(TvShows value, $Res Function(TvShows) then) =
      _$TvShowsCopyWithImpl<$Res, TvShows>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String total,
      @JsonKey(name: 'permalink') String permalink,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'network') String network,
      @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$TvShowsCopyWithImpl<$Res, $Val extends TvShows>
    implements $TvShowsCopyWith<$Res> {
  _$TvShowsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? permalink = null,
    Object? endDate = null,
    Object? network = null,
    Object? imageThumbnailPath = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvShowsImplCopyWith<$Res> implements $TvShowsCopyWith<$Res> {
  factory _$$TvShowsImplCopyWith(
          _$TvShowsImpl value, $Res Function(_$TvShowsImpl) then) =
      __$$TvShowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String total,
      @JsonKey(name: 'permalink') String permalink,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'network') String network,
      @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$$TvShowsImplCopyWithImpl<$Res>
    extends _$TvShowsCopyWithImpl<$Res, _$TvShowsImpl>
    implements _$$TvShowsImplCopyWith<$Res> {
  __$$TvShowsImplCopyWithImpl(
      _$TvShowsImpl _value, $Res Function(_$TvShowsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? permalink = null,
    Object? endDate = null,
    Object? network = null,
    Object? imageThumbnailPath = null,
    Object? status = null,
  }) {
    return _then(_$TvShowsImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvShowsImpl implements _TvShows {
  _$TvShowsImpl(
      {@JsonKey(name: 'name') this.total = '',
      @JsonKey(name: 'permalink') this.permalink = '',
      @JsonKey(name: 'end_date') this.endDate = '',
      @JsonKey(name: 'network') this.network = '',
      @JsonKey(name: 'image_thumbnail_path') this.imageThumbnailPath = '',
      @JsonKey(name: 'status') this.status = ''});

  factory _$TvShowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowsImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String total;
  @override
  @JsonKey(name: 'permalink')
  final String permalink;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'network')
  final String network;
  @override
  @JsonKey(name: 'image_thumbnail_path')
  final String imageThumbnailPath;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'TvShows(total: $total, permalink: $permalink, endDate: $endDate, network: $network, imageThumbnailPath: $imageThumbnailPath, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.imageThumbnailPath, imageThumbnailPath) ||
                other.imageThumbnailPath == imageThumbnailPath) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, permalink, endDate,
      network, imageThumbnailPath, status);

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowsImplCopyWith<_$TvShowsImpl> get copyWith =>
      __$$TvShowsImplCopyWithImpl<_$TvShowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowsImplToJson(
      this,
    );
  }
}

abstract class _TvShows implements TvShows {
  factory _TvShows(
      {@JsonKey(name: 'name') final String total,
      @JsonKey(name: 'permalink') final String permalink,
      @JsonKey(name: 'end_date') final String endDate,
      @JsonKey(name: 'network') final String network,
      @JsonKey(name: 'image_thumbnail_path') final String imageThumbnailPath,
      @JsonKey(name: 'status') final String status}) = _$TvShowsImpl;

  factory _TvShows.fromJson(Map<String, dynamic> json) = _$TvShowsImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get total;
  @override
  @JsonKey(name: 'permalink')
  String get permalink;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'network')
  String get network;
  @override
  @JsonKey(name: 'image_thumbnail_path')
  String get imageThumbnailPath;
  @override
  @JsonKey(name: 'status')
  String get status;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TvShowsImplCopyWith<_$TvShowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
