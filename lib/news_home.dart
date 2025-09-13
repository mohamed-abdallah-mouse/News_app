import 'package:flutter/material.dart';
import 'package:news_app/catogries_list.dart';
import 'package:news_app/news_list_builder.dart';

class NewsHome extends StatelessWidget {
  const NewsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('News'), Text(' cloud')],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CatogriesList()),
            NewsListBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
