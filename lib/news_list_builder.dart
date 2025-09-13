import 'package:flutter/material.dart';
import 'package:news_app/models/news_services_model.dart';
import 'package:news_app/news_list.dart';
import 'package:news_app/services/news_services.dart';

class NewsListBuilder extends StatefulWidget {
  String category;
  var future;
  NewsListBuilder({super.key, required this.category});
  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  @override
  void initState() {
    // TODO: implement initState
    widget.future = NewsServices(category: widget.category).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsServicesModel>>(
      future: widget.future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsList(news: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(child: Text('error'));
        } else
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
      },
    );
  }
}
