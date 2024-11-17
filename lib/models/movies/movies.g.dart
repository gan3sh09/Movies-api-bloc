// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesModelImpl _$$MoviesModelImplFromJson(Map<String, dynamic> json) =>
    _$MoviesModelImpl(
      total: json['total'] as String? ?? '',
      page: (json['page'] as num?)?.toInt() ?? 0,
      pages: (json['pages'] as num?)?.toInt() ?? 1,
      tvShow: (json['tv_shows'] as List<dynamic>?)
              ?.map((e) => TvShows.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MoviesModelImplToJson(_$MoviesModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
      'tv_shows': instance.tvShow,
    };

_$TvShowsImpl _$$TvShowsImplFromJson(Map<String, dynamic> json) =>
    _$TvShowsImpl(
      total: json['name'] as String? ?? '',
      permalink: json['permalink'] as String? ?? '',
      endDate: json['end_date'] as String? ?? '',
      network: json['network'] as String? ?? '',
      imageThumbnailPath: json['image_thumbnail_path'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$TvShowsImplToJson(_$TvShowsImpl instance) =>
    <String, dynamic>{
      'name': instance.total,
      'permalink': instance.permalink,
      'end_date': instance.endDate,
      'network': instance.network,
      'image_thumbnail_path': instance.imageThumbnailPath,
      'status': instance.status,
    };
