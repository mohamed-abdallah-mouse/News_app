import 'package:flutter/material.dart';
import 'package:news_app/models/news_services_model.dart';
import 'package:news_app/news_list.dart';
import 'package:news_app/services/news_services.dart';

class CategiriesBuilder extends StatefulWidget {
  String category;
  var future;
  CategiriesBuilder({super.key, required this.category});
  @override
  State<CategiriesBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<CategiriesBuilder> {
  @override
  void initState() {
    // TODO: implement initState
    widget.future = NewsServices(category: widget.category).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('${widget.category} news')),
      body: FutureBuilder<List<NewsServicesModel>>(
        future: widget.future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CustomScrollView(slivers: [NewsList(news: snapshot.data!)]);
          } else if (snapshot.hasError) {
            return Center(child: Text('error'));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
