// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleResult _$SimpleResultFromJson(Map<String, dynamic> json) {
  return SimpleResult(
      json['original_name'] as String,
      json['name'] as String,
      (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
      (json['popularity'] as num)?.toDouble(),
      (json['origin_country'] as List)?.map((e) => e as String)?.toList(),
      json['vote_count'] as int,
      json['first_air_date'] as String,
      json['poster_path'] as String,
      json['backdrop_path'] as String,
      json['original_language'] as String,
      json['id'] as int,
      (json['vote_average'] as num)?.toDouble(),
      json['overview'] as String);
}

Map<String, dynamic> _$SimpleResultToJson(SimpleResult instance) =>
    <String, dynamic>{
      'original_name': instance.original_name,
      'name': instance.name,
      'genre_ids': instance.genre_ids,
      'popularity': instance.popularity,
      'origin_country': instance.origin_country,
      'vote_count': instance.vote_count,
      'first_air_date': instance.first_air_date,
      'poster_path': instance.poster_path,
      'backdrop_path': instance.backdrop_path,
      'original_language': instance.original_language,
      'id': instance.id,
      'vote_average': instance.vote_average,
      'overview': instance.overview
    };
