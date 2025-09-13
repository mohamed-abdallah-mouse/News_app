import 'package:flutter/material.dart';
import 'package:news_app/models/news_services_model.dart';
import 'package:news_app/news_item.dart';

class NewsList extends StatelessWidget {
  NewsList({super.key, required this.news});
  List<NewsServicesModel> news;
  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: news.length, (
        context,
        index,
      ) {
        return NewsItem(news: news[index]);
      }),
    );
  }
}
