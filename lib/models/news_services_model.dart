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
      title: json['title'] ?? 'No title founded',
      subtitle: json['description'] ?? 'No description founded',
      image: json['urlToImage'] ?? 'assets/image.png',
    );
  }
}
