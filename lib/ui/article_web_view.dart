import "package:flutter/material.dart";
import "package:webview_flutter/webview_flutter.dart";

class ArticleWebView extends StatelessWidget {
  static const routeName = "/article_web";

  const ArticleWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final url = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
        ),
        body: WebView(
          initialUrl: url,
        ));
  }
}
