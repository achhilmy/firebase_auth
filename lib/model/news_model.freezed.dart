// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopHeadlineModel _$TopHeadlineModelFromJson(Map<String, dynamic> json) {
  return _TopHeadlineModel.fromJson(json);
}

/// @nodoc
mixin _$TopHeadlineModel {
  String get status => throw _privateConstructorUsedError;
  int get totalResult => throw _privateConstructorUsedError;
  List<ArticleModel> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopHeadlineModelCopyWith<TopHeadlineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopHeadlineModelCopyWith<$Res> {
  factory $TopHeadlineModelCopyWith(
          TopHeadlineModel value, $Res Function(TopHeadlineModel) then) =
      _$TopHeadlineModelCopyWithImpl<$Res, TopHeadlineModel>;
  @useResult
  $Res call({String status, int totalResult, List<ArticleModel> articles});
}

/// @nodoc
class _$TopHeadlineModelCopyWithImpl<$Res, $Val extends TopHeadlineModel>
    implements $TopHeadlineModelCopyWith<$Res> {
  _$TopHeadlineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResult = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResult: null == totalResult
          ? _value.totalResult
          : totalResult // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopHeadlineModelImplCopyWith<$Res>
    implements $TopHeadlineModelCopyWith<$Res> {
  factory _$$TopHeadlineModelImplCopyWith(_$TopHeadlineModelImpl value,
          $Res Function(_$TopHeadlineModelImpl) then) =
      __$$TopHeadlineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, int totalResult, List<ArticleModel> articles});
}

/// @nodoc
class __$$TopHeadlineModelImplCopyWithImpl<$Res>
    extends _$TopHeadlineModelCopyWithImpl<$Res, _$TopHeadlineModelImpl>
    implements _$$TopHeadlineModelImplCopyWith<$Res> {
  __$$TopHeadlineModelImplCopyWithImpl(_$TopHeadlineModelImpl _value,
      $Res Function(_$TopHeadlineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResult = null,
    Object? articles = null,
  }) {
    return _then(_$TopHeadlineModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResult: null == totalResult
          ? _value.totalResult
          : totalResult // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopHeadlineModelImpl implements _TopHeadlineModel {
  const _$TopHeadlineModelImpl(
      {this.status = '',
      this.totalResult = 0,
      final List<ArticleModel> articles = const []})
      : _articles = articles;

  factory _$TopHeadlineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopHeadlineModelImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final int totalResult;
  final List<ArticleModel> _articles;
  @override
  @JsonKey()
  List<ArticleModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'TopHeadlineModel(status: $status, totalResult: $totalResult, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopHeadlineModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResult, totalResult) ||
                other.totalResult == totalResult) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResult,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopHeadlineModelImplCopyWith<_$TopHeadlineModelImpl> get copyWith =>
      __$$TopHeadlineModelImplCopyWithImpl<_$TopHeadlineModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopHeadlineModelImplToJson(
      this,
    );
  }
}

abstract class _TopHeadlineModel implements TopHeadlineModel {
  const factory _TopHeadlineModel(
      {final String status,
      final int totalResult,
      final List<ArticleModel> articles}) = _$TopHeadlineModelImpl;

  factory _TopHeadlineModel.fromJson(Map<String, dynamic> json) =
      _$TopHeadlineModelImpl.fromJson;

  @override
  String get status;
  @override
  int get totalResult;
  @override
  List<ArticleModel> get articles;
  @override
  @JsonKey(ignore: true)
  _$$TopHeadlineModelImplCopyWith<_$TopHeadlineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) {
  return _ArticleModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleModel {
  String get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get urlToImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleModelCopyWith<ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleModelCopyWith<$Res> {
  factory $ArticleModelCopyWith(
          ArticleModel value, $Res Function(ArticleModel) then) =
      _$ArticleModelCopyWithImpl<$Res, ArticleModel>;
  @useResult
  $Res call(
      {String author, String title, String description, String urlToImage});
}

/// @nodoc
class _$ArticleModelCopyWithImpl<$Res, $Val extends ArticleModel>
    implements $ArticleModelCopyWith<$Res> {
  _$ArticleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? title = null,
    Object? description = null,
    Object? urlToImage = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: null == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleModelImplCopyWith<$Res>
    implements $ArticleModelCopyWith<$Res> {
  factory _$$ArticleModelImplCopyWith(
          _$ArticleModelImpl value, $Res Function(_$ArticleModelImpl) then) =
      __$$ArticleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author, String title, String description, String urlToImage});
}

/// @nodoc
class __$$ArticleModelImplCopyWithImpl<$Res>
    extends _$ArticleModelCopyWithImpl<$Res, _$ArticleModelImpl>
    implements _$$ArticleModelImplCopyWith<$Res> {
  __$$ArticleModelImplCopyWithImpl(
      _$ArticleModelImpl _value, $Res Function(_$ArticleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? title = null,
    Object? description = null,
    Object? urlToImage = null,
  }) {
    return _then(_$ArticleModelImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: null == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleModelImpl implements _ArticleModel {
  const _$ArticleModelImpl(
      {this.author = '',
      this.title = '',
      this.description = '',
      this.urlToImage = ''});

  factory _$ArticleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleModelImplFromJson(json);

  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String urlToImage;

  @override
  String toString() {
    return 'ArticleModel(author: $author, title: $title, description: $description, urlToImage: $urlToImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleModelImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, author, title, description, urlToImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleModelImplCopyWith<_$ArticleModelImpl> get copyWith =>
      __$$ArticleModelImplCopyWithImpl<_$ArticleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleModelImplToJson(
      this,
    );
  }
}

abstract class _ArticleModel implements ArticleModel {
  const factory _ArticleModel(
      {final String author,
      final String title,
      final String description,
      final String urlToImage}) = _$ArticleModelImpl;

  factory _ArticleModel.fromJson(Map<String, dynamic> json) =
      _$ArticleModelImpl.fromJson;

  @override
  String get author;
  @override
  String get title;
  @override
  String get description;
  @override
  String get urlToImage;
  @override
  @JsonKey(ignore: true)
  _$$ArticleModelImplCopyWith<_$ArticleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
