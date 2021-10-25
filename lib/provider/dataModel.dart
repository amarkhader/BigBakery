class DataModel {
  String price;
  String image;
  String name;

  DataModel({
    required this.price,
    required this.image,
    required this.name,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      price: json['Price'],
      image: json['imageUrl'],
      name: json['name'],
    );
  }
}
