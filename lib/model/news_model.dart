import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class TopHeadlineModel with _$TopHeadlineModel {
  const factory TopHeadlineModel({
    @Default('') String status,
    @Default(0) int totalResult,
    @Default([]) List<ArticleModel> articles,
  }) = _TopHeadlineModel;
  factory TopHeadlineModel.fromJson(Map<String, dynamic> json) =>
      _$TopHeadlineModelFromJson(json);
}

@freezed
class ArticleModel with _$ArticleModel {
  const factory ArticleModel({
    @Default('') String author,
    @Default('') String title,
    @Default('') String description,
    @Default('') String urlToImage,
  }) = _ArticleModel;
  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}
