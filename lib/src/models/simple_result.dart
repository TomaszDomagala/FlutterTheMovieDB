import 'package:json_annotation/json_annotation.dart';

part 'simple_result.g.dart';

@JsonSerializable(nullable: true)
class SimpleResult extends Object {
  final String original_name;
  final String name;
  final List<int> genre_ids;
  final double popularity;
  final List<String> origin_country;
  final int vote_count;
  final String first_air_date;
  final String poster_path;
  final String backdrop_path;
  final String original_language;
  final int id;
  final double vote_average;
  final String overview;

  SimpleResult(this.original_name, this.name, this.genre_ids, this.popularity,
      this.origin_country, this.vote_count, this.first_air_date,
      this.poster_path, this.backdrop_path, this.original_language, this.id,
      this.vote_average, this.overview);

  factory SimpleResult.fromJson(Map<String, dynamic> json) => _$SimpleResultFromJson(json);
  Map<String, dynamic> toJson() => _$SimpleResultToJson(this);


}
