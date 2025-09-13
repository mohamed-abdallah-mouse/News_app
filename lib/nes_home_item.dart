import 'package:flutter/material.dart';
import 'package:news_app/categiries_builder.dart';

import 'models/catogry_model.dart';

class NesHomeItem extends StatelessWidget {
  const NesHomeItem({super.key, required this.catogries});
  final CatogryModel catogries;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) {
              return CategiriesBuilder(category: catogries.catogryName);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        height: 100,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.circular(16),
          image: DecorationImage(
            image: AssetImage(catogries.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(catogries.name, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
