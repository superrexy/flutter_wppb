import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_wppb/data/api/api_service.dart';
import 'package:flutter_wppb/data/model/article.dart';
import 'package:flutter_wppb/widget/card_article.dart';

class ArticleListPage extends StatefulWidget {
  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  late Future<Articles> _articles;

  @override
  void initState() {
    super.initState();
    _articles = ApiService().topHeadline();
  }

  Widget _buildList(BuildContext context) {
    return FutureBuilder(
      future: _articles,
      builder: (context, AsyncSnapshot<Articles> snapshot) {
        var state = snapshot.connectionState;
        if (state != ConnectionState.done) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data?.articles.length,
              itemBuilder: (context, index) {
                var _article = snapshot.data?.articles[index];

                return CardArticle(
                  article: _article!,
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return Text('');
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: _buildList(context),
    );
  }
}
