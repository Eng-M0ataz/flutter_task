import 'rating.dart';

class ProductModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductModel.fromJsonData(Map<String, dynamic> jsonData) {
    return ProductModel(
      id: jsonData['id'] as int?,
      title: jsonData['title'] as String?,
      price: (jsonData['price'] as num?)?.toDouble(),
      description: jsonData['description'] as String?,
      category: jsonData['category'] as String?,
      image: jsonData['image'] as String?,
      rating:
          jsonData['rating'] == null
              ? null
              : Rating.fromJsonData(jsonData['rating'] as Map<String, dynamic>),
    );
  }
}
