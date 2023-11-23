import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> artictls;

  const NewsListView({super.key, required this.artictls});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: artictls.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: NewsTile(articleModel: artictls[index]),
          );
        },
      ),
    );
  }
}
