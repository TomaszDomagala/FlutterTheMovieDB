import 'package:json_annotation/json_annotation.dart';
import 'simple_result.dart';

part 'results_page.g.dart';

//  **************************************************************************
//  to generate classes use command
//  flutter packages pub run build_runner watch
//  **************************************************************************

@JsonSerializable(nullable: true)
class ResultsPage extends Object {
  final int page;
  final int total_results;
  final int total_pages;
  final List<SimpleResult> results;

  ResultsPage(this.page, this.total_results, this.total_pages, this.results);

  factory ResultsPage.fromJson(Map<String, dynamic> json) =>
      _$ResultsPageFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsPageToJson(this);
}
