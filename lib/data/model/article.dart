// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Articles welcomeFromJson(String str) => Articles.fromJson(json.decode(str));

class Articles {
  Articles({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  String status;
  int totalResults;
  List<Article> articles;

  factory Articles.fromJson(Map<String, dynamic> json) => Articles(
      status: json["status"],
      totalResults: json["totalResults"],
      articles: List<Article>.from(
        json["articles"].map((x) => Article.fromJson(x)).where((article) =>
            article.author != null &&
            article.urlToImage != null &&
            article.publishedAt != null &&
            article.content != null &&
            article.url != null),
      ));
}

class Article {
  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  DateTime publishedAt;
  String content;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json["source"]),
        author: json["author"] ?? "",
        title: json["title"] ?? "",
        description: json["description"] ?? "",
        url: json["url"] ?? "",
        urlToImage: json["urlToImage"] ??
            "https://cdn.nerdschalk.com/wp-content/uploads/2021/11/unknown-logo-759x427.png?width=800",
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"] ?? "",
      );
}

class Source {
  Source({
    required this.id,
    required this.name,
  });

  dynamic id;
  String name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
      );
}
