// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticlesModel _$ArticlesModelFromJson(Map<String, dynamic> json) =>
    ArticlesModel(
      articles: (json['articles'] as List<dynamic>?)
              ?.map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      articlesCount: json['articlesCount'] as int? ?? 0,
    );

Map<String, dynamic> _$ArticlesModelToJson(ArticlesModel instance) =>
    <String, dynamic>{
      'articles': instance.articles.map((e) => e.toJson()).toList(),
      'articlesCount': instance.articlesCount,
    };

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) => ArticleModel(
      slug: json['slug'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      body: json['body'] as String?,
      tagList:
          (json['tagList'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: strToDt(json['createdAt'] as String?),
      updatedAt: strToDt(json['updatedAt'] as String?),
      favorited: json['favorited'] as bool?,
      favoritesCount: json['favoritesCount'] as int?,
      author: json['author'] == null
          ? null
          : ProfileModel.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleModelToJson(ArticleModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'description': instance.description,
      'body': instance.body,
      'tagList': instance.tagList,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'favorited': instance.favorited,
      'favoritesCount': instance.favoritesCount,
      'author': instance.author?.toJson(),
    };
