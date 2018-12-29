// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultsPage _$ResultsPageFromJson(Map<String, dynamic> json) {
  return ResultsPage(
      json['page'] as int,
      json['total_results'] as int,
      json['total_pages'] as int,
      (json['results'] as List)
          ?.map((e) => e == null
              ? null
              : SimpleResult.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ResultsPageToJson(ResultsPage instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.total_results,
      'total_pages': instance.total_pages,
      'results': instance.results
    };
