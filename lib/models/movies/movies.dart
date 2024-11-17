// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'movies.g.dart';
part 'movies.freezed.dart';

@freezed
class MoviesModel with _$MoviesModel {
  factory MoviesModel(
          {@Default('') String total,
          @Default(0) int page,
          @Default(1) int pages,
          @Default([]) @JsonKey(name: 'tv_shows') List<TvShows> tvShow}) =
      _MoviesModel;

  factory MoviesModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesModelFromJson(json);
}

@freezed
class TvShows with _$TvShows {
  factory TvShows({
    @JsonKey(name: 'name') @Default('') String total,
    @JsonKey(name: 'permalink') @Default('') String permalink,
    @JsonKey(name: 'end_date') @Default('') String endDate,
    @JsonKey(name: 'network') @Default('') String network,
    @JsonKey(name: 'image_thumbnail_path')
    @Default('')
    String imageThumbnailPath,
    @JsonKey(name: 'status') @Default('') String status,
  }) = _TvShows;

  factory TvShows.fromJson(Map<String, dynamic> json) =>
      _$TvShowsFromJson(json);
}
