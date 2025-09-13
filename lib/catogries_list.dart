import 'package:flutter/material.dart';
import 'package:news_app/models/catogry_model.dart';

import 'nes_home_item.dart';

class CatogriesList extends StatelessWidget {
  const CatogriesList({super.key});
  static final List<CatogryModel> categories = const [
    CatogryModel(
      name: 'general',
      image: 'assets/technology.jpeg',
      catogryName: 'general',
    ),
    CatogryModel(
      name: 'business',
      image: 'assets/technology.jpeg',
      catogryName: 'business',
    ),
    CatogryModel(
      name: 'entertainment',
      image: 'assets/entertaiment.avif',
      catogryName: 'entertainment',
    ),
    CatogryModel(
      name: 'health',
      image: 'assets/health.avif',
      catogryName: 'health',
    ),
    CatogryModel(
      name: 'science',
      image: 'assets/science.avif',
      catogryName: 'science',
    ),
    CatogryModel(
      name: 'sports',
      image: 'assets/technology.jpeg',
      catogryName: 'sports',
    ),
    CatogryModel(
      name: 'technology',
      image: 'assets/technology.jpeg',
      catogryName: 'technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (cotext, index) {
          return NesHomeItem(catogries: categories[index]);
        },
      ),
    );
  }
}
