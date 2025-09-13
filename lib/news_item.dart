import 'package:flutter/material.dart';
import 'package:news_app/models/news_services_model.dart';

class NewsItem extends StatelessWidget {
  NewsItem({super.key, required this.news});
  final NewsServicesModel news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          ClipRRect(
            child: Image.network(
              news.image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            news.title,
            style: TextStyle(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            news.subtitle,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
