class Shopss {
  String name;
  String imageUrl;
  String delviry;
  Shopss({
    required this.name,
    required this.imageUrl,
    required this.delviry,
  });
  factory Shopss.fromJason(Map<String, dynamic> json) {
    return Shopss(
      name: json['name'],
      imageUrl: json['imageUrl'],
      delviry: json['delviry'],
    );
  }
  factory Shopss.fromJson(Map<String, dynamic> json) =>
      Shopss(imageUrl: json["imageUrl"], name: json["name"], delviry: json["delviry"]);
}
