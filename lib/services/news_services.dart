import 'package:dio/dio.dart';
import 'package:news_app/models/news_services_model.dart';

class NewsServices {
  String category;
  NewsServices({required this.category});
  final Dio dio = Dio();
  Future<List<NewsServicesModel>> getNews() async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=c89043a34e344261ad75583b384f09f9&pageSize=10&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> news = jsonData['articles'];
      List<NewsServicesModel> newsList = [];
      for (var neww in news) {
        NewsServicesModel newsServicesModel = NewsServicesModel.fromJson(neww);
        newsList.add(newsServicesModel);
      }
      return newsList;
    } catch (e) {
      return [];
    }
  }
}
