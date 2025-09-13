class NewsServicesModel {
  final String title;
  final String subtitle;
  final String image;

  const NewsServicesModel({
    required this.title,
    required this.subtitle,
    required this.image,
  });
  factory NewsServicesModel.fromJson(json) {
    return NewsServicesModel(
      title: json['title'],
      subtitle: json['description'],
      image: json['urlToImage'],
    );
  }
}
